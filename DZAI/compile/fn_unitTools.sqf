//unitTools Version 0.04
/*
        Usage: [_unit] call fnc_unitTools;
		Generates tools for AI: Flashlight, Watch, Knife, Hatchet, Compass, Map, Toolbox, Matchbox, Military Flashlight, Rangefinder, GPS, NV Goggles
*/
        private ["_unit","_toolselect"];
        _unit = _this select 0;

		_toolselect = ((count DZAI_toolChances) - 1);
		for "_i" from 0 to _toolselect do {
			if ((random 1) < (DZAI_toolChances select _i)) then {_unit addWeapon (DZAI_DefaultTools select _i);};
		};
