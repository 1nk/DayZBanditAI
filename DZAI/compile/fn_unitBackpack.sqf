//unitBackpack Version 0.04
/*
        Usage: [_unit] call fnc_unitBackpack;
		Adds a random backpack to AI, and a chance to add binoculars.
*/
        private ["_unit","_bag"];
        _unit = _this select 0;
		_bag = DZAI_DefaultStartPack;
	
		//Generate random backpack
		if ((random 1) < DZAI_betterBackPack) then {		//Decide whether to select a non-default backpack.
			_bag = DZAI_DefaultBackpacks call BIS_fnc_selectRandom;
		};
		_unit addBackpack _bag;							// Add backpack
		if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Backpack: %1 for AI.",_bag];};
		
		//Chance to add binoculars. Binoculars are added in this script and not unitTools because the default AI sometimes uses binoculars to view surroundings.
		if ((random 1) < 0.50) then {
			_unit addWeapon "binocular";				// Add binoculars
		};