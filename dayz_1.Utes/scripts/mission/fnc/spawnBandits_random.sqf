/*
	Usage: [_minAI, _addAI, _minspawnd, _maxspawnd, _patrold, _weapongrade (optional)] call fnc_doSomething_bandits
	Note: Called through mission.sqm
*/

private ["_totalAI","_minAI","_addAI", "_minspawnd", "_maxspawnd", "_patrold","_weapongrade","_spawnchance"];

	/*if ( ({alive _x && side _x == east} count allUnits) >= maxAISpawned ) exitWith {titleText["Maximum number of AI exceeded!","PLAIN DOWN"];};	
	_curTime = (DateToNumber date);
	_timePassed = (_curTime - lastAISpawnRndm) * 525948;
	if (_timePassed < spawnRndmCooldown) exitWith {titleText["Wait for AI spawn cooldown! (5 minutes)","PLAIN DOWN"];};
	_x setVariable ["lastAISpawnRndm",_curTime,true];*/

	//AI Quantity Limiter
	if (isNil "numAIUnits") then {
		numAIUnits = 0;
	};
	if (numAIUnits >= maxAIUnits) exitWith {titleText["Maximum number of AI exceeded!","PLAIN DOWN"];};		
	
	//AI Spawn Rate Limiter
	/*if (isNil 'lastRdmUnit') then {
		lastRdmSpawned = (DateToNumber date);
		publicVariable "lastRdmUnit";
	};*/
		
	/*Variables:
		
	_patrold = Maximum distance between patrol waypoints.
	_spawnchance: Chance to add a specified number of AI to spawn (Default 5%)
		
	_minAI: Minimum number of AI bandits to spawn.
	_addAI: Additional random number of AI bandits to spawn.
	_minspawnd: Minimum distance to spawn AI bandit around player's position.
	_maxspawnd: Maximum distance to spawn AI bandit around player's position.
	_weapongrade: Weapon grade of bandit. 0: Civilian Grade Weapons, 1: Low Grade Military, 2: Medium Grade Military, 3: High Grade Military
	_totalAI: (Calculated) Total number of AI to spawn. Script does not proceed if zero value.
	*/
		
	// Values taken from mission.sqm. If not present, use preset values. 
	_minAI = 0;
	_spawnchance = 0.05;
	if ((random 1) < _spawnchance) then {
		_minAI = _this select 0;
	};
	_addAI = 0;
	if(count _this > 1) then {_addAI = _this select 1;};
	_minspawnd = 75;
	if(count _this > 2) then {_minspawnd = _this select 2;};
	_maxspawnd = 500;
	if(count _this > 3) then {_maxspawnd = _this select 3;};
	_patrold = 250;
	if(count _this > 4) then {_patrold = _this select 4;};
	_weapongrade = floor(random 3);
	if(count _this > 5) then {_weapongrade = _this select 5;};
		
	//Calculate values
	_totalAI = (_minAI + round(random _addAI));
	numAIUnits = numAIUnits + _totalAI;
	publicVariable "numAIUnits";
	
	if (_totalAI > 0) then {						// Only run script if there is at least one bandit to spawn
		for "_i" from 1 to _totalAI do {
			_pos = [getpos player, random 360, [_minspawnd,_maxspawnd], false, 2] call fnc_randomPos;
			_eastGrp = createGroup east;
			_SideHQ = createCenter east;
			
			_types = ["Survivor2_DZ", "SurvivorW2_DZ", "Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"];	// AI Bandit types
			_type = _types call BIS_fnc_selectRandom;
			
			_unit = _eastGrp createUnit [_type, _pos, [], 0, "FORM"];						// Spawn the AI bandit unit
			_unit addEventHandler ["Fired", {_this call ai_fired;}];						// Unit firing causes zombie aggro in the area, like player
			_unit addEventHandler ["Fired", {(_this select 0) setvehicleammo 1}];			// AI bandit has unlimited ammunition (?)
			_unit addEventHandler ["HandleDamage",{_this call local_zombieDamage;}];		// AI bandit handles damage (?)
			_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; // Credit player for killing the AI bandit
			//_unit addEventHandler ["Killed",{["banditKilled"] call fnc_humanity;}];
			_unit addEventHandler ["Killed",{_this call fnc_spawn_deathFlies;}];			// Spawn flies for AI bandit corpse
			_unit addEventHandler ["Killed",{_this call fnc_banditAIKilled;}];				// 
			_unit addEventHandler ["Killed",{_this setDamage 1;}];							// New
			
			EAST setFriend [WEST, 0];														// Two-way hostility with player
			WEST setFriend [EAST, 0];
			
			[_unit] call fnc_setBehaviour;													// AI behavior configuration
			[_unit] call fnc_setSkills;														// AI skill configuration
			[_unit] call fnc_unitBackpackTools;												// (Customizable rates) Bandit backpack, tools, gadgets 
			[_unit, _weapongrade] call fnc_unitSelectPistol;								// Random AI Bandit sidearm
			[_unit, _weapongrade] call fnc_unitSelectRifle;									// (Customizable rates) 2nd variable - AI Bandit weapon grade (0-3: Low-High)
			[_unit] call fnc_unitConsumables;												// AI bandit Food/Medical/Misc loot.
			null = [_eastGrp,_pos,_patrold] execVM "BIN_taskPatrol.sqf";
			{ _x addRating -20000; } forEach allMissionObjects "zZombie_Base";				// Spawned unit should be immediately hostile to existing zombies
			//hint format["Last created AI unit: %1 (%2 of %3). Weapon Grade %4",_type,_i,_totalAI,_weapongrade];			// Report total number of AI spawned (for testing)
			//titleText["Triggered spawnBandits_random","PLAIN DOWN"];						// Report trigger activation (basic)
		};
	};
	//sleep 1.5;
	//if (true) exitWith {};