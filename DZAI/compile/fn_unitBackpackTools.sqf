//DZAI unitBackpackTools Version 0.02
/*
        Usage: [_unit] call fnc_unitBackpackTools;
*/
        private ["_unit","_bag","_chance","_chance2","_gadget", "_weapongrade"];
        _unit = _this select 0;

		_chance = (floor(random 10)) + 1;		// Generate a random number between 1-10 used to assign a random gadget
		_chance2 = (floor(random 10)) + 1;		// Generate a random number between 1-10 used to assign a random tool set
		_bag = DZAI_DefaultStartPack;
	
		//Generate random backpack
		if ((random 1) < DZAI_betterBackPack) then {		//Decide whether to select a non-default backpack.
			_bag = DZAI_DefaultBackpacks call BIS_fnc_selectRandom;
		};
		_unit addBackpack _bag;							// Add backpack
		if (DZAI_extdebug) then {diag_log format["DZAI Extended Debug: Generated Backpack: %1 for AI.",_bag];};
		
		//Generate random gadget or binoculars
		switch (true) do {
		  case ((_chance == 1) && (_weapongrade > 1)): {
			_gadget = DZAI_DefaultGadgets call BIS_fnc_selectRandom;
			_unit addWeapon _gadget;					// Add a random gadget
			_unit addWeapon "binocular";				// Add binoculars
			if (DZAI_extdebug) then {diag_log format["DZAI Extended Debug: Generated Gadget: %1 for AI.",_gadget];};
		  };
		  case (_chance >= 6): {
			_unit addWeapon "binocular";				// Add binoculars
		  };
		};
		
		//Generate a set of tools
		switch (_chance2) do {
		  case 1: {		// Add Tool set 1
			_unit addWeapon "ItemWatch";
			_unit addWeapon "ItemKnife";
			_unit addWeapon "ItemCompass";
			_unit addWeapon "ItemMap";
			_unit addWeapon "ItemToolbox";
			_unit addWeapon "ItemMatchbox";
			_unit addWeapon "ItemFlashlight";
		  };
		  case 2: {		// Add Tool set 2
			_unit addWeapon "ItemWatch";
			_unit addWeapon "ItemKnife";
			_unit addWeapon "ItemMap";
			_unit addWeapon "ItemToolbox";
			_unit addWeapon "ItemFlashlight";
		  };
		  case 3: {		// Add Tool set 3
			_unit addWeapon "ItemWatch";
			_unit addWeapon "ItemKnife";
			_unit addWeapon "ItemCompass";
			_unit addWeapon "ItemHatchet";
			_unit addWeapon "ItemFlashlight";
		  };
		  case 4: {		// Add Tool set 4
			_unit addWeapon "ItemWatch";
			_unit addWeapon "ItemKnife";
			_unit addWeapon "ItemHatchet";
			_unit addWeapon "ItemFlashlight";
		  };
		  case 5: {		// Add Tool set 5
			_unit addWeapon "ItemKnife";
			_unit addWeapon "ItemFlashlight";
			_unit addWeapon "ItemHatchet";
		  };
		  case 6: {		// Add Tool set 6
			_unit addWeapon "ItemWatch";
			_unit addWeapon "ItemFlashlight";
			_unit addWeapon "ItemKnife";
		  };
		  default {		// Default tool set
			_unit addWeapon "ItemFlashlight";
		  };
		};
		