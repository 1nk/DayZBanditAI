//DayZ AI Module Revision 1 (DZAI) Version 0.02
/*
	Usage: 
*/

private ["_totalAI","_minAI","_addAI", "_minspawnd", "_maxspawnd", "_patrold","_weapongrade","_trigger","_triggerpos"];
if (!isServer) exitWith {};

	/*Variables:
		
	(Public)
	numAIUnits: Current number of spawned AI bandits.
	
	(Global)
	DZAI_maxAIUnits: Global maximum number of spawned AI bandits.
	
	(Local)
	_patrold: Maximum distance between patrol waypoints.
	_minAI: Minimum number of AI bandits to spawn.
	_addAI: Additional random number of AI bandits to spawn.
	_minspawnd: Minimum distance to spawn AI bandit around player's position.
	_maxspawnd: Maximum distance to spawn AI bandit around player's position.
	_weapongrade: Weapon grade of bandit. 0: Civilian Grade Weapons, 1: Low Grade Military, 2: Medium Grade Military, 3: High Grade Military
	_totalAI: (Calculated) Total number of AI to spawn. Script does not proceed if zero value.
	*/
	
	//AI Quantity Limiter
	if (isNil "numAIUnits") then {
		numAIUnits = 0;
	};
	if (numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",numAIUnits];};		
		
	// Values taken from mission.sqm. If not present, use preset values. 
	_minAI = 0;
	_addAI = 0;
	_minspawnd = 75;
	_maxspawnd = 350;
	_patrold = 200;
	if(count _this > 0) then {_minAI = _this select 0;};
	if(count _this > 1) then {_addAI = _this select 1;};
	if(count _this > 2) then {_minspawnd = _this select 2;};
	if(count _this > 3) then {_maxspawnd = _this select 3;};
	if(count _this > 4) then {_patrold = _this select 4;};
	if(count _this > 6) then {_trigger = _this select 6;};
		
	//Calculate values
	_totalAI = (DZAI_spawnExtra + _minAI + round(random _addAI));
	if (_totalAI == 0) exitWith {};						// Only run script if there is at least one bandit to spawn
	numAIUnits = (numAIUnits + _totalAI);
	_triggerpos = getpos _trigger;
	//publicVariable "numAIUnits";
	
	if (DZAI_debug) then {diag_log format["DZAI Debug: %1 new AI spawns triggered using Random location as spawn point.",_totalAI];};

	for "_i" from 1 to _totalAI do {
		private ["_banditGrp","_pos","_type","_unit"];
		_banditGrp = createGroup resistance;
		_pos = [_triggerpos, random 360, [_minspawnd,_maxspawnd], false, 2] call fnc_randomPos;
		_type = DZAI_BanditTypesDefault call BIS_fnc_selectRandom;
		_unit = _banditGrp createUnit [_type, _pos, [], 0, "FORM"];						// Spawn the AI bandit unit
		
		_unit addEventHandler ["Fired", {_this call ai_fired;}];						// Unit firing causes zombie aggro in the area, like player
		_unit addEventHandler ["Fired", {(_this select 0) setvehicleammo 1}];			// AI bandit has unlimited ammunition
		_unit addEventHandler ["HandleDamage",{_this call local_zombieDamage;}];		// AI bandit handles damage
		_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; // Credit player for killing the AI bandit
		_unit addEventHandler ["Killed",{_this call fnc_spawn_deathFlies;}];			// Spawn flies for AI bandit corpse
		_unit addEventHandler ["Killed",{_this call fnc_banditAIKilled;}];				// Update current AI count
		_unit addEventHandler ["Killed",{_this spawn fnc_banditAIRespawn;}];			// Respawn AI near nearby buildings
		_unit addEventHandler ["Killed",{(_this select 0) setDamage 1;}];
		
		_weapongrade = call fnc_selectRandomGrade;		
		[_unit] call fnc_setBehaviour;													// Set AI behavior
		[_unit] call fnc_setSkills;														// Set AI skill
		[_unit, _weapongrade] call fnc_unitBackpackTools;								// Assign backpack, tools, gadgets 
		[_unit, _weapongrade] call fnc_unitSelectPistol;								// Assign sidearm
		[_unit, _weapongrade] call fnc_unitSelectRifle;									// Assign rifle
		[_unit, _weapongrade] call fnc_unitConsumables;									// Generate loot: food, medical, misc, skin
		null = [_banditGrp,_pos,_patrold] execVM "DZAI\BIN_taskPatrol.sqf";
		if (DZAI_debug) then {diag_log format["DZAI Debug: Spawned AI Type %1 %2 of %3. (Random)",_type,_i, _totalAI];};
	};

