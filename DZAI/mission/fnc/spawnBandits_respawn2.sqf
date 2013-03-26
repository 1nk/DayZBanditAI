/*
	Usage: [_minAI, _addAI, _minspawnd, _maxspawnd, _patrold, _weapongrade (optional)] call fnc_doSomething_bandits
	Note: Called through mission.sqm
*/
if (!isServer) exitWith {};
private ["_totalAI","_minAI","_addAI", "_minspawnd", "_maxspawnd", "_patrold","_weapongrade","_spawnchance","_killerpos","_respawnpos"];

	//AI Quantity Limiter
	if (isNil "numAIUnits") then {
		numAIUnits = 0;
	};
	if (numAIUnits >= DZAI_maxAIUnits) exitWith {
		diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",numAIUnits];
	};		
		
	//Editables
	_patrold = 100;
	_totalAI = 0;
	_minAI = 0;
	_addAI = 0;
	_maxspawnd = 400;
	
	if(count _this > 0) then {_minAI = _this select 0;};
	if(count _this > 1) then {_addAI = _this select 1;};	
	if(count _this > 2) then {_maxspawnd = _this select 2;};
	//if(count _this > 3) then {_weapongrade = _this select 3;};
	if(count _this > 4) then {_respawnpos = _this select 4;};
	
	_totalAI = (_minAI + round(random _addAI));
	numAIUnits = numAIUnits + _totalAI;
	lastAI3 = (DateToNumber date);
	
	
	_nearbldgs = nearestObjects [_respawnpos, ["Building"], _maxspawnd];
	if ((count _nearbldgs) == 0) exitWith {_nul = [1,0,75,400,300,0,_respawnpos] call fnc_spawnBandits_respawn;};
	_bldgpos = [_nearbldgs] call getBuildingPosition;
	
	if (_totalAI == 0) exitWith {};
	if (DZAI_debug) then {diag_log format["DZAI Debug: Respawn AI (Building Spawn) started."];};
	for "_i" from 1 to _totalAI do {
		private ["_banditGrp","_SideHQ","_p","_pos","_types","_type","_unit"];
		//_SideHQ = createCenter east;
		//_eastGrp = createGroup east;
		_banditGrp = createGroup resistance;
		_p = _bldgpos call BIS_fnc_selectRandom;
		_pos = [_p, 0, 50, 0, 0, 20, 0] call BIS_fnc_findSafePos;
		_types = DZAI_BanditTypesDefault;
		_type = _types call BIS_fnc_selectRandom;
		_unit = _banditGrp createUnit [_type, _pos, [], 0, "FORM"];						// Spawn the AI bandit unit
		
		_unit addEventHandler ["Fired", {_this call ai_fired;}];						// Unit firing causes zombie aggro in the area, like player
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
		[_unit] call fnc_unitBackpackTools;												// Assign backpack, tools, gadgets 
		[_unit, _weapongrade] call fnc_unitSelectPistol;								// Assign sidearm
		[_unit, _weapongrade] call fnc_unitSelectRifle;									// Assign rifle
		[_unit] call fnc_unitConsumables;												// Generate loot: food, medical, misc, skin
		null = [_banditGrp,_pos,_patrold] execVM "DZAI\BIN_taskPatrol.sqf";
		if (DZAI_debug) then {diag_log format["DZAI Debug: Respawned AI Type %1 %2 of %3. (Building)",_type,_i, _totalAI];};
	};

