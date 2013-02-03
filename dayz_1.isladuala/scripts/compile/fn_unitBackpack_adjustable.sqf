/*
        Usage: [_unit] call fnc_unitBackpack_adjustable;
*/
        private ["_unit","_bag","_bags","_rnd","_equip","_equips","_rndeq3","_i","_chance","_chance2","_cEquips","_uEquips","_rEquips","_tools","_gadgets","_gadgets","_gadget","_rgadget"];
        _unit = _this select 0;

		_chance = floor(random 10) + 1;		// Generate a random number between 1-10 used to assign a random gadget
		_chance2 = floor(random 10) + 1;		// Generate a random number between 1-10 used to assign a random tool
        _bags = ["DZ_Patrol_Pack_EP1", "DZ_Assault_Pack_EP1", "DZ_CivilBackpack_EP1", "DZ_ALICE_Pack_EP1", "DZ_Backpack_EP1"]; //Possible types of backpacks to assign
		//_tools = ["ItemWatch","ItemKnife","ItemCompass","ItemMap","ItemToolbox","ItemMatchbox"];	//Unused; tool selection is now hardcoded
		_gadgets = ["ItemGPS","NVGoggles","binocular_vector","ItemFlashlightRed"]; //Possible gadgets to assign
		
		//Generate random backpack
        _rnd = floor random (count _bags);
		_bag = _bags select _rnd;
		_unit addBackpack _bag;							// Add backpack
				
		//Generate random gadget or binoculars
		switch (true) do {
		  case (_chance == 1): {
			_rgadget = floor random (count _gadgets);
			_gadget = _gadgets select _rgadget;
			_unit addWeapon _gadget;					// Add a random gadget
			_unit addWeapon "binocular";				// Add binoculars
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
		  default {		// Add Tool set 5 (Default)
			_unit addWeapon "ItemWatch";
			_unit addWeapon "ItemKnife";
			_unit addWeapon "ItemFlashlight";
		  };
		};
		