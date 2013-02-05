_unit = _this select 0;
private["_mag"];
	
	_mag = getArray (configFile >> "CfgWeapons" >> primaryWeapon _unit >> "magazines");
	if ({_x in magazines _unit} count _mag == 0) then {
		for "_i" from 1 to 4 do {
			_unit addMagazine (_mag select 0);
		};
	};
sleep 10;