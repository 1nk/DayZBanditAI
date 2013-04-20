//respawnBandits_bldgs Version 0.04
/*
	Usage: [_maxspawnd, _respawnpos] call respawnBandits_bldgs
*/
if (!isServer) exitWith {};
private ["_maxspawnd", "_patrold","_weapongrade","_respawnpos","_banditGrp","_p","_pos","_type","_unit"];

	//Check if there are too many AI units in the game.
	if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};	
		
	//Editables and default values
	_patrold = 100;					//Maximum distance between patrol waypoints. 
	_maxspawnd = 400;				//Maximum distance to search for buildings to use as respawn points.
	
	_respawnpos = _this select 0;	//Position of AI corpse, used as a reference position to generate a respawn position.
	_maxspawnd = _this select 1;	//Maximum distance from trigger location to generate spawn positions
	
	DZAI_numAIUnits = (DZAI_numAIUnits + 1);

	_nearbldgs = nearestObjects [_respawnpos, ["Building"], _maxspawnd];
	if ((count _nearbldgs) == 0) exitWith {
		_nul = [1000,_respawnpos] call fnc_respawnBandits_bldgs; //Extend range to 1km if no buildings immediately nearby. This shouldn't be happening if patrol distance is short enough.
		diag_log format["DZAI Warning: No buildings found within predefined radius. Extending respawn radius to 1000 units."]; 
	};	
	_bldgpos = [_nearbldgs] call getBuildingPosition;
	
	_banditGrp = createGroup resistance;
	_p = _bldgpos call BIS_fnc_selectRandom;
	_pos = [_p, 30, 80, 0, 0, 20, 0] call BIS_fnc_findSafePos;
	_type = DZAI_BanditTypesDefault call BIS_fnc_selectRandom;
	_unit = _banditGrp createUnit [_type, _pos, [], 0, "FORM"];						// Spawn the AI bandit unit
		
	_unit addEventHandler ["Fired", {_this call ai_fired;}];						// Unit firing causes zombie aggro in the area, like player
	_unit addEventHandler ["Fired", {(_this select 0) setvehicleammo 1}];			// AI bandit has unlimited ammunition
	_unit addEventHandler ["HandleDamage",{_this call local_zombieDamage;}];		// AI bandit handles damage
	_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; // Credit player for killing the AI bandit
	_unit addEventHandler ["Killed",{_this call fnc_spawn_deathFlies;}];			// Spawn flies for AI bandit corpse
	_unit addEventHandler ["Killed",{_this call fnc_banditAIKilled;}];				// Update current AI count
	_unit addEventHandler ["Killed",{_this spawn fnc_banditAIRespawn2;}];			// Respawn AI near nearby buildings
	_unit addEventHandler ["Killed",{(_this select 0) setDamage 1;}];
	
	_weapongrade = [DZAI_weaponGrades,DZAI_gradeChances] call fnc_selectRandomWeighted;	
	[_unit] call fnc_setBehaviour;													// Set AI behavior
	[_unit] call fnc_setSkills;														// Set AI skill
	[_unit] call fnc_unitBackpack;													// Add backpack and chance of binoculars
	[_unit, _weapongrade] call fnc_unitSelectRifle;									// Add rifle
	null = [_banditGrp,_pos,_patrold,DZAI_debugMarkers] execVM "DZAI\BIN_taskPatrol.sqf";
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Respawned 1 AI Type %1 with weapongrade %2. (Building)",_type,_weapongrade];};

