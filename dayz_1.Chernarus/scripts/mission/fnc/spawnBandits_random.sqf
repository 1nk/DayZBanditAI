/*
	Usage: [_minAI, _addAI, _minspawnd, _maxspawnd, _patrold, _weapongrade (optional)] call fnc_doSomething_bandits
	Note: Called through mission.sqm
*/

private["_testmode", "_totalAI","_minAI","_addAI", "_minspawnd", "_maxspawnd", "_patrold","_weapongrade","_spawnchance"];

	_testmode = 0; //Default: 0, Test Mode: 1
	
	if (_testmode == 1) then {
		_minspawnd = 30;
		_maxspawnd = 100;
		_patrold = 250;
		_totalAI = 10;
		_weapongrade = 1;
		player setcaptive true;						// Bandits should not be hostile to player in test mode.

	} else {
		/*Variables:
		
		_minAI: Minimum number of AI bandits to spawn.
		_addAI: Additional random number of AI bandits to spawn.
		_minspawnd: Minimum distance to spawn AI bandit around player's position.
		_maxspawnd: Maximum distance to spawn AI bandit around player's position.
		_patrold: Distance between randomly generated patrol waypoints.
		_weapongrade: Weapon grade of bandit. 0: Civilian Grade Weapons, 1: Low Grade Military, 2: Medium Grade Military, 3: High Grade Military
		_totalAI: (Calculated) Total number of AI to spawn. Script does not proceed if zero value.
		*/
		
		// Values taken from mission.sqm. If not present, use preset values. 
		_minAI = 0;
		_spawnchance = 1.0;
		if ((random 1) < _spawnchance) then {
			if(count _this > 0) then {_minAI = _this select 0;};
		};
		_addAI = 0;
		if(count _this > 1) then {_addAI = _this select 1;};
		_minspawnd = 30;
		if(count _this > 2) then {_minspawnd = _this select 2;};
		_maxspawnd = 300;
		if(count _this > 3) then {_maxspawnd = _this select 3;};
		_patrold = 250;
		if(count _this > 4) then {_patrold = _this select 4;};
		_weapongrade = floor(random 3);
		if(count _this > 5) then {_weapongrade = _this select 5;};
		
		//Calculate values
		_totalAI = (_minAI + round(random _addAI));
	};
	
	if (_totalAI > 0) then {						// Only run script if there is at least one bandit to spawn
		for "_i" from 1 to _totalAI do {
		  _p = [getpos player, random 360, [_minspawnd,_maxspawnd], false, 2] call fnc_randomPos;
		  /*if (count _p > 0) then {
			call compile format ["
			_m%1 = createMarker[""MRK%1"",[_p select 0,_p select 1]];
			_m%1 setMarkerShape ""ICON"";
			_m%1 setMarkerType ""DOT"";
			_m%1 setmarkercolor ""ColorRedAlpha"";
		  ",_i];
		  };*/

			_pos = _p;
			_eastGrp = createGroup east;
			_SideHQ = createCenter east;
			
			_types = ["Survivor2_DZ", "SurvivorW2_DZ", "Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"];	// AI Bandit types
			_type = _types call BIS_fnc_selectRandom;
			
			_unit = _eastGrp createUnit [_type, _pos, [], 0, "FORM"];						// Spawn the AI bandit unit
			_unit addEventHandler ["Fired", {_this call ai_fired;}];						// Unit firing causes zombie aggro in the area, like player
			//_unit addEventHandler ["FiredNear", {_this call ai_targets;}]; 					// Unit is hostile to zombies when any unit fires nearby. Needed to maintain hostility to zombies.
			_unit addEventHandler ["Fired", {(_this select 0) setvehicleammo 1}];			// AI bandit has unlimited ammunition (?)
			_unit addEventHandler ["HandleDamage",{_this call local_zombieDamage;}];		// AI bandit handles damage (?)
			_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; // Credit player for killing the AI bandit
			//_unit addEventHandler ["Killed",{["banditKilled"] call fnc_humanity;}];
			_unit addEventHandler ["Killed",{_this call fnc_spawn_deathFlies;}];			// Spawn flies for AI bandit corpse
			_unit addEventHandler ["Killed",{_this setDamage 1;}];							// New
			
			EAST setFriend [WEST, 0];														// Two-way hostility with player
			WEST setFriend [EAST, 0];
			
			[_unit] call fnc_setBehaviour;													// AI behavior configuration
			[_unit] call fnc_setSkills;														// AI skill configuration
			//[_unit] call fnc_unitBackpack;												// Random backpack, tool, gadget
			[_unit] call fnc_unitBackpack_adjustable;										// (Customizable rates) Bandit backpack, tools, gadgets 
			[_unit] call fnc_unitPistols;													// Random AI Bandit sidearm
			//[_unit] call fnc_unitPistols_adjustable;										// (Customizable rates) AI Bandit sidearm
			//[_unit] call fnc_unitRifles;													// All rifles have equal chance of being selected
			//[_unit, 1] call fnc_unitRifles_adjustable;									// (Customizable rates) 2nd variable - AI Bandit weapons: 0 (No Sniper), 1 (No Railgun), 2 (Default)
			[_unit, _weapongrade] call fnc_unitRifles_leveled;								// (Customizable rates) 2nd variable - AI Bandit weapon grade (0-3: Low-High)
			[_unit] call fnc_banditLoot;													// AI bandit Ammunition loot
			[_unit] call fnc_genericLoot;													// AI bandit Food/Medical/Misc loot. To do: Customizable food amounts
			[_eastGrp, _pos, _patrold, "COMBAT"] call fnc_taskPatrol;						// (Customizable) 4th variable - unit behavior ("COMBAT" is somewhat more human-like)
			{ _x addRating -20000; } forEach allMissionObjects "zZombie_Base";				// Spawned unit should be immediately hostile to existing zombies
			//hint format["Last created AI unit: %1 (%2 of %3). Weapon Grade %4",_type,_i,_totalAI,_weapongrade];			// Report total number of AI spawned (for testing)
			sleep 9.0;																		// Take a break.
			//hint "";
		};
	};
	sleep 1.5;
	if (true) exitWith {};