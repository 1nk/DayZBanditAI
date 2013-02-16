/*
	Usage: [_minAI, _addAI, _minspawnd (ignored), _maxspawnd, _patrold, _weapongrade (optional)] call fnc_spawnbandits_HVB
	Note: Called through mission.sqm
*/

private["_testmode", "_totalAI","_minAI","_addAI", "_spawnd","_maxspawnd", "_patrold","_weapongrade","_bldgpos","_i","_j","_nearbldgs","_maxwait","_radfactor","_seekrange","_seekfactor","_pursuit","spawnchance"];

	_testmode = 0; //Default: 0, Test Mode: 1
	
	if (_testmode == 1) then {
		_totalAI = 2;
		_weapongrade = 1;
		_maxwait = 120;
		_pursuit = 75;
		_spawnd = 200;
		_patrold = 250;
		player setcaptive true;						// Bandits should not be hostile to player in test mode.

	} else {
		/* Variables:
		
		_minAI: Minimum number of AI bandits to spawn.
		_addAI: Additional random number of AI bandits to spawn.
		_radfactor: Spawn radius factor. Default: 1.0. Higher value: larger spawn radius. Smaller value: smaller spawn radius.
		_maxspawnd: Maximum distance to select buildings to spawn AI bandit.
		_weapongrade: Weapon grade of bandit. 0: Civilian Grade Weapons, 1: Low Grade Military, 2: Medium Grade Military, 3: High Grade Military
		_seekrange: Base seek range for AI bandit. May be modified by _seekfactor.
		_seekfactor: Seek range multiplier, modifies _seekrange. Larger value will increase the range at which the AI bandit will begin to seek out the player, smaller value will decrease it. (Default 0.75)
		_totalAI: Total number of AI to spawn. Script does not proceed if zero value.
		_maxwait: Maximum wait time in seconds before AI moves to the next waypoint.
		_pursuit: Within this distance, AI bandit will seek out player's current position every 40 seconds. (Default 100m)
		_spawnd: Calculated distance to select buildings to spawn AI bandit.
		*/
		
		//Values taken from mission.sqm. If not present, use preset values. 
		_minAI = 0;
		_spawnchance = 1.0;
		if ((random 1) < _spawnchance) then {
			if(count _this > 0) then {_minAI = _this select 0;};
		};
		_addAI = 1;
		if(count _this > 1) then {_addAI = _this select 1;};
		_maxspawnd = 300;
		if(count _this > 3) then {_maxspawnd = _this select 3;};
		_weapongrade = 1 + floor(random 2);
		if(count _this > 5) then {_weapongrade = _this select 5;};
		
		//Editables
		_radfactor = 1.0;
		_patrold = 250;
		
		//Calculate values
		_totalAI = (_minAI + round(random _addAI));				
		_spawnd = (_radfactor * _maxspawnd);
	};
	
	// Generate a list of useable building positions within a distance of _maxspawnd meters.
	_bldgpos = [];
	_i = 0;
	_j = 0;
	//High-value buildings:
	//["Land_SS_hangar","Land_Mil_ControlTower","Land_Mil_Barracks_i","Land_Mil_Barracks","Land_Mil_Barracks_L","Land_A_GeneralStore_01","Land_A_GeneralStore_01a","Land_A_Hospital","Land_a_stationhouse","CampEast_EP1","MASH_EP1"];
	_nearbldgs = nearestObjects [getpos player, ["Land_SS_hangar","Land_Mil_ControlTower","Land_Mil_Barracks_i","Land_Mil_Barracks","Land_Mil_Barracks_L","Land_A_GeneralStore_01","Land_A_GeneralStore_01a","Land_A_Hospital","Land_a_stationhouse","CampEast_EP1","MASH_EP1","Body"], _spawnd];
	if (count _nearbldgs == 0) then {
		_nearbldgs = nearestObjects [getpos player, ["Building"], _spawnd];
	};
	{
		private["_y"];
		_y = _x buildingPos _i;
		while {format["%1", _y] != "[0,0,0]"} do {
			_bldgpos set [_j, _y];
			_i = _i + 1;
			_j = _j + 1;
			_y = _x buildingPos _i;
		};
		_i = 0;
	} forEach _nearbldgs;
	
	if ((_totalAI > 0) && (count _bldgpos > 0)) then {						// Only run script if there is at least one bandit to spawn
		for "_i" from 1 to _totalAI do {
			_p = _bldgpos select floor(random count _bldgpos);
			_pos = [_p, 0, 100, 0, 0, 20, 0] call BIS_fnc_findSafePos;
			_eastGrp = createGroup east;
			_SideHQ = createCenter east;
			
			_types = ["Survivor2_DZ", "SurvivorW2_DZ", "Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"];	// AI Bandit types
			_type = _types call BIS_fnc_selectRandom;
			
			_unit = _eastGrp createUnit [_type, _pos, [], 0, "FORM"];						// Spawn the AI bandit unit
			_unit addEventHandler ["Fired", {_this call ai_fired;}];						// Unit firing catches zombies attention, like player
			_unit addEventHandler ["Fired", {(_this select 0) setvehicleammo 1}];			// AI bandit has unlimited ammunition
			//_unit addEventHandler ["Fired", {_this call ai_reloadifempty;}];					// AI bandit gains 4 mags for primary weapon if depleted
			_unit addEventHandler ["HandleDamage",{_this call local_zombieDamage;}];		// AI bandit handles damage (?)
			_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; // Credit player for killing the AI bandit
			_unit addEventHandler ["Killed",{_this call fnc_spawn_deathFlies;}];			// Spawn flies for AI bandit corpse
			_unit addEventHandler ["Killed",{_this setDamage 1;}];							// (?)
			
			EAST setFriend [WEST, 0];														// Two-way hostility with player
			WEST setFriend [EAST, 0];
			
			[_unit] call fnc_setBehaviour;													// AI behavior configuration
			[_unit] call fnc_setSkills;														// AI skill configuration
			[_unit] call fnc_unitBackpack_adjustable;										// (Customizable rates) Bandit backpack, tools, gadgets 
			[_unit] call fnc_unitPistols;													// Random AI Bandit sidearm
			[_unit, _weapongrade] call fnc_unitRifles_leveled;								// (Customizable rates) 2nd variable - AI Bandit weapon grade (0-3: Low-High)
			//[_unit] call fnc_banditLoot;													// AI bandit Ammunition loot
			[_unit] call fnc_genericLoot;													// AI bandit Food/Medical/Misc loot. To do: Customizable food amounts
			null = [_eastGrp,_pos,_patrold] execVM "BIN_taskPatrol_HVB.sqf";
			{ _x addRating -20000; } forEach allMissionObjects "zZombie_Base";				// Spawned unit should be immediately hostile to existing zombies
			//hint format["Last created AI unit: %1 (%2 of %3). Weapon Grade %4",_type,_i,_totalAI,_weapongrade];			// Report total number of AI spawned (for testing)
			sleep 9.0;																		// Take a break.
		};
	};
	sleep 1.5;
	if (true) exitWith {};