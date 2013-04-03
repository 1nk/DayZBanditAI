//DayZ AI Module Revision 1 (DZAI) Version 0.02
/*
	Usage: 
*/

private ["_totalAI","_minAI","_addAI","_minspawnd","_maxspawnd","_patrold","_weapongrade","_bldgpos","_nearbldgs","_isHVB","_bldglist","_trigger","_triggerpos"];
if (!isServer) exitWith {};

	/* 	Variables:
		
	(Public)
	numAIUnits: Current number of spawned AI bandits.
	
	(Global)
	DZAI_maxAIUnits: Global maximum number of spawned AI bandits.
	
	(Local)
	_patrold: Maximum distance between patrol waypoints.
	_minAI: Minimum number of AI bandits to spawn.
	_addAI: Additional random number of AI bandits to spawn.
	_maxspawnd: Maximum distance to select buildings to spawn AI bandit.
	_weapongrade: Weapon grade of bandit. 0: Civilian Grade Weapons, 1: Low Grade Military, 2: Medium Grade Military, 3: High Grade Military
	_totalAI: Total number of AI to spawn. Script does not proceed if zero value.
	*/
	
	//AI Quantity Limiter
	if (isNil "numAIUnits") then {
		numAIUnits = 0;
	};
	if (numAIUnits >= DZAI_maxAIUnits) exitWith {
		diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",numAIUnits];
	};
	
	//Editables
	_patrold = 90;

	//Values taken from mission.sqm. If not present, use preset values. 
	_minAI = 0;
	_addAI = 0;
	_maxspawnd = 400;
	if(count _this > 0) then {_minAI = _this select 0;};
	if(count _this > 1) then {_addAI = _this select 1;};
	if(count _this > 2) then {_maxspawnd = _this select 2;};
	if(count _this > 3) then {_trigger = _this select 3;};
		
	//Calculate values
	_totalAI = (DZAI_spawnExtra + _minAI + round(random _addAI));
	if (_totalAI == 0) exitWith {};	// Only run script if there is at least one bandit to spawn
	_triggerpos = getpos _trigger;	
	numAIUnits = numAIUnits + _totalAI;
	//publicVariable "numAIUnits";
	
	_nearbldgs = nearestObjects [_triggerpos, ["Building"], _maxspawnd];
	_bldgpos = [_nearbldgs] call getBuildingPosition;
				
	if (DZAI_debug) then {diag_log format["DZAI Debug: %1 new AI spawns triggered using Building location as spawn point.",_totalAI];};
	for "_i" from 1 to _totalAI do {
		private ["_banditGrp","_p","_pos","_type","_unit"];
		_banditGrp = createGroup resistance;
		_p = _bldgpos call BIS_fnc_selectRandom;
		_pos = [_p, 10, 85, 0, 0, 20, 0] call BIS_fnc_findSafePos;
		_type = DZAI_BanditTypesDefault call BIS_fnc_selectRandom;
		_unit = _banditGrp createUnit [_type, _pos, [], 0, "FORM"];						// Spawn the AI bandit unit
		
		_unit addEventHandler ["Fired", {_this call ai_fired;}];						// Unit firing catches zombies attention, like player
		_unit addEventHandler ["Fired", {(_this select 0) setvehicleammo 1}];			// AI bandit has unlimited ammunition
		_unit addEventHandler ["HandleDamage",{_this call local_zombieDamage;}];		// AI bandit handles damage
		_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; // Credit player for killing the AI bandit
		_unit addEventHandler ["Killed",{_this call fnc_spawn_deathFlies;}];			// Spawn flies for AI bandit corpse
		_unit addEventHandler ["Killed",{_this call fnc_banditAIKilled;}];				// Update current AI count
		_unit addEventHandler ["Killed",{_this spawn fnc_banditAIRespawn2;}];			// Respawn AI near nearby buildings
		_unit addEventHandler ["Killed",{(_this select 0) setDamage 1;}];				
		
		_weapongrade = call fnc_selectRandomGrade;
		[_unit] call fnc_setBehaviour;													// Set AI behavior
		[_unit] call fnc_setSkills;														// Set AI skill
		[_unit, _weapongrade] call fnc_unitBackpackTools;								// Assign backpack, tools, gadgets 
		[_unit, _weapongrade] call fnc_unitSelectPistol;								// Assign sidearm
		[_unit, _weapongrade] call fnc_unitSelectRifle;									// Assign rifle
		[_unit, _weapongrade] call fnc_unitConsumables;									// Generate loot: food, medical, misc, skin
		null = [_banditGrp,_pos,_patrold] execVM "DZAI\BIN_taskPatrol.sqf";
		if (DZAI_debug) then {diag_log format["DZAI Debug: Spawned AI Type %1 %2 of %3. (Building)",_type,_i, _totalAI];};
	};
