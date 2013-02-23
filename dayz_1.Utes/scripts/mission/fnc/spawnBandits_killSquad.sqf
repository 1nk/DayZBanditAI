/*
	Usage: [_minAI, _addAI, _minspawnd (ignored), _maxspawnd, _patrold, _weapongrade (optional)] call fnc_spawnbandits_HVB
	Note: Called through mission.sqm
*/

private ["_totalAI","_minAI","_addAI","_spawnd","_maxspawnd","_patrold","_weapongrade","_bldgpos","_nearbldgs","_radfactor","_spawnchance","_isHVB","_bldglist","_curTime","_timePassed","_bldgKS"];
	
	/*if (( {alive _x && side _x == resistance} count allUnits) >= maxKSSpawned ) exitWith {titleText["Maximum number of Kill Squad AI exceeded!","PLAIN DOWN"];};	
	_curTime = (DateToNumber date);
	_timePassed = (_curTime - lastAISpawnKS) * 525948;
	if (_timePassed < spawnKSCooldown) exitWith {titleText["Wait for AI spawn cooldown!","PLAIN DOWN"];};
	_x setVariable ["lastAISpawnKS",_curTime,true];*/
	
	if (isNil 'numKillSquads') then {
		numKillSquads = 0;
	};
	if (numKillSquads > minKillSquad) exitWith {titleText["Minimum threshold of Kill Squad members not reached!","PLAIN DOWN"];};	
	
	/*if (isServer && (isNil 'lastKillSquad')) then {
		lastKillSquad = (DateToNumber date);
	} else {
	};*/
	

	/* Variables:
		
	_radfactor: Spawn radius factor. Default: 1.0. Higher value: larger spawn radius. Smaller value: smaller spawn radius.
	_patrold = Maximum distance between patrol waypoints.
	_spawnchance: Chance to add a specified number of AI to spawn (Default 5%)
		
	_minAI: Minimum number of AI bandits to spawn.
	_addAI: Additional random number of AI bandits to spawn.
	_maxspawnd: Maximum distance to select buildings to spawn AI bandit.
	_weapongrade: Weapon grade of bandit. 0: Civilian Grade Weapons, 1: Low Grade Military, 2: Medium Grade Military, 3: High Grade Military
	_totalAI: Total number of AI to spawn. Script does not proceed if zero value.
	_spawnd: Calculated distance to select buildings to spawn AI bandit.
	*/
		
	//Editables
	_radfactor = 1.0;
	_patrold = 500;
	_spawnchance = 1.0;					//Chance to spawn a specified number of additional AI

	//Values taken from mission.sqm. If not present, use preset values. 
	_minAI = 0;
	if ((random 1) < _spawnchance) then {
		_minAI = _this select 0;
	};
	_addAI = 1;
	if(count _this > 1) then {_addAI = _this select 1;};
	_minspawnd = 75;
	_maxspawnd = 500;
	if(count _this > 3) then {_maxspawnd = _this select 3;};
	_isHVB = 0;
	if(count _this > 4) then {_isHVB = _this select 4;};
	_weapongrade = 1 + floor(random 2);
	if(count _this > 5) then {_weapongrade = _this select 5;};
		
	//Calculate values
	_totalAI = (_minAI + round(random _addAI));		
	numKillSquads = numKillSquads + _totalAI;
	publicVariable "numKillSquads";
	_spawnd = (_radfactor * _maxspawnd);
	
	// Generate a list of useable building positions within a distance of _maxspawnd meters.
	if (_isHVB == 1) then {
		_bldglist = ["Land_SS_hangar","Land_Mil_ControlTower","Land_Mil_Barracks_i","Land_Mil_Barracks","Land_Mil_Barracks_L","Land_A_GeneralStore_01","Land_A_GeneralStore_01a","Land_A_Hospital","Land_a_stationhouse","CampEast_EP1","MASH_EP1"];
	} else {
		_bldglist = ["Building"];
	};

	_nearbldgs = nearestObjects [getpos player, _bldglist, _spawnd];
	_bldgpos = [_nearbldgs] call getBuildingPosition;
	_p = _bldgpos call BIS_fnc_selectRandom;
	
	if (_totalAI > 0) then {						// Only run script if there is at least one bandit to spawn
		for "_i" from 1 to _totalAI do {
			//_p = _bldgpos call BIS_fnc_selectRandom;
			_pos = [_p, 0, 100, 0, 0, 20, 0] call BIS_fnc_findSafePos;
			_types = ["Soldier1_DZ", "Sniper1_DZ"];	// AI Bandit types
			_type = _types call BIS_fnc_selectRandom;
			
			_unit = killSquadGrp createUnit [_type, _pos, [], 0, "FORM"];					// Spawn the AI bandit unit
			_unit addEventHandler ["Fired", {_this call ai_fired;}];						// Unit firing catches zombies attention, like player
			_unit addEventHandler ["Fired", {(_this select 0) setvehicleammo 1}];			// AI bandit has unlimited ammunition
			//_unit addEventHandler ["Fired", {_this call ai_reloadifempty;}];				// AI bandit gains 4 mags for primary weapon if depleted
			_unit addEventHandler ["HandleDamage",{_this call local_zombieDamage;}];		// AI bandit handles damage (?)
			_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; // Credit player for killing the AI bandit
			_unit addEventHandler ["Killed",{_this call fnc_spawn_deathFlies;}];			// Spawn flies for AI bandit corpse
			_unit addEventHandler ["Killed",{_this call fnc_killSquadKilled;}];				// 
			_unit addEventHandler ["Killed",{_this setDamage 1;}];							// (?)
			if (_i == 1) then {
				_unit setRank "LIEUTENANT";
			} else {
				_unit setRank "PRIVATE";
			};
		
			[_unit] call fnc_setBehaviourKS;													// AI behavior configuration
			[_unit] call fnc_setSkillsKS;														// AI skill configuration
			[_unit] call fnc_unitBackpackTools;												// (Customizable rates) Bandit backpack, tools, gadgets 
			[_unit, _weapongrade] call fnc_unitSelectPistol;								// Random AI Bandit sidearm
			[_unit, _weapongrade] call fnc_unitSelectRifle;									// (Customizable rates) 2nd variable - AI Bandit weapon grade (0-3: Low-High)
			[_unit] call fnc_unitConsumables;												// AI bandit Food/Medical/Misc loot.
			null = [killSquadGrp,_pos,_patrold] execVM "BIN_taskPatrol_KS.sqf";
			{ _x addRating -20000; } forEach allMissionObjects "zZombie_Base";				// Spawned unit should be immediately hostile to existing zombies
			//hint format["Last created AI unit: %1 (%2 of %3). Weapon Grade %4",_type,_i,_totalAI,_weapongrade];			// Report total number of AI spawned (for testing)
			titleText["Triggered spawnBandits_killSquad","PLAIN DOWN"];							// Report trigger activation (basic)
		};
	};
	//sleep 1.5;
	//if (true) exitWith {};