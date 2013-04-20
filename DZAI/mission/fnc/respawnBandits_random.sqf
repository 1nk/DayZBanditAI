//respawnBandits_random Version 0.04
/*
	Usage: [_spawnMarker, _spawnRadius] call respawnBandits_random
*/

private ["_patrold","_weapongrade","_spawnMarker","_spawnRadius","_banditGrp","_pos","_type","_unit"];
if (!isServer) exitWith {};

	//Check if there are too many AI units in the game.
	if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};
	
	//Editables
	_patrold = 600;						//Maximum distance between patrol waypoints.
	
	_spawnMarker = _this select 0;		//Reference marker ("center")
	_spawnRadius = _this select 1;		//Maximum distance from reference marker to generate random spawn positions.

	DZAI_numAIUnits = (DZAI_numAIUnits + 1);

	_banditGrp = createGroup resistance;
	_pos = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
	_type = DZAI_BanditTypesDefault call BIS_fnc_selectRandom;
	_unit = _banditGrp createUnit [_type, _pos, [], 0, "FORM"];						// Spawn the AI bandit unit
		
	_unit addEventHandler ["Fired", {_this call ai_fired;}];						// Unit firing causes zombie aggro in the area, like player
	_unit addEventHandler ["Fired", {(_this select 0) setvehicleammo 1}];			// AI bandit has unlimited ammunition
	_unit addEventHandler ["HandleDamage",{_this call local_zombieDamage;}];		// AI bandit handles damage
	_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; // Credit player for killing the AI bandit
	_unit addEventHandler ["Killed",{_this call fnc_spawn_deathFlies;}];			// Spawn flies for AI bandit corpse
	_unit addEventHandler ["Killed",{_this call fnc_banditAIKilled;}];				// Update current AI count, add additional loot.
	_unit addEventHandler ["Killed",{_this spawn fnc_banditAIRespawn;}];			// Respawn AI near nearby buildings
	_unit addEventHandler ["Killed",{(_this select 0) setDamage 1;}];
		
	_weapongrade = [DZAI_weaponGrades,DZAI_gradeChances] call fnc_selectRandomWeighted;	
	[_unit] call fnc_setBehaviour;													// Set AI behavior
	[_unit] call fnc_setSkills;														// Set AI skill
	[_unit] call fnc_unitBackpack;													// Add backpack and chance of binoculars
	[_unit, _weapongrade] call fnc_unitSelectRifle;									// Add rifle
	null = [_banditGrp,_pos,_patrold,DZAI_debugMarkers] execVM "DZAI\BIN_taskPatrol.sqf";
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Respawned 1 AI Type %1 with weapongrade %2. (Random)",_type,_weapongrade];};

