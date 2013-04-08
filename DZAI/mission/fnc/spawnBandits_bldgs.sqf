//spawnBandits_bldgs Version 0.03
/*
	Usage: [_minAI, _addAI, _maxspawnd, _trigger] call spawnBandits_bldgs
*/

private ["_totalAI","_minAI","_addAI","_maxspawnd","_patrold","_weapongrade","_bldgpos","_nearbldgs","_trigger","_triggerpos"];
if (!isServer) exitWith {};
	
	//Check if there are too many AI units in the game.
	if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};
	
	//Editables and default values
	_patrold = 100;												//Maximum distance between patrol waypoints. 
	_minAI = 0;													
	_addAI = 0;
	_maxspawnd = 400;
	
	if(count _this > 0) then {_minAI = _this select 0;};		//Mandatory minimum number of AI units to spawn
	if(count _this > 1) then {_addAI = _this select 1;};		//Maximum number of additional AI units to spawn
	if(count _this > 2) then {_maxspawnd = _this select 2;};	//Maximum distance from trigger location to generate spawn positions
	if(count _this > 3) then {_trigger = _this select 3;};		//The trigger responsible for calling this script.
		
	_totalAI = (DZAI_spawnExtra + _minAI + round(random _addAI));
	if (_totalAI == 0) exitWith {};	// Only run script if there is at least one bandit to spawn
	_triggerpos = getpos _trigger;	
	DZAI_numAIUnits = DZAI_numAIUnits + _totalAI;
	
	_nearbldgs = nearestObjects [_triggerpos, ["Building"], _maxspawnd];
	_bldgpos = [_nearbldgs] call getBuildingPosition;
				
	if (DZAI_debug) then {diag_log format["DZAI Debug: %1 new AI spawns triggered using Building location as spawn point.",_totalAI];};
	for "_i" from 1 to _totalAI do {
		private ["_banditGrp","_p","_pos","_type","_unit"];
		_banditGrp = createGroup resistance;
		_p = _bldgpos call BIS_fnc_selectRandom;
		_pos = [_p, 30, 80, 0, 0, 20, 0] call BIS_fnc_findSafePos;
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
