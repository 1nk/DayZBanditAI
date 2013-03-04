/*
	Usage: [_unit] call fnc_unitPistols;
*/
	private ["_unit","_pistol","_pistols","_pistolmag","_pistolmags","_rnd","_i","_weapongrade","_magazine"];
	_unit = _this select 0;
	_weapongrade = _this select 1;
	
	_nmags = (floor (random 4)) + 1;	// Generate 1-4 mags for selected weapon.

	if (_weapongrade > 1) then {  	//For pistols, any weapon grade higher than zero ("Civilian") is "Military".
		_weapongrade = 1;
	};

	switch (_weapongrade) do {
	  case 0: {		//Farm / Residential / Supermarket
		_pistols = ["Colt1911", "revolver_EP1", "Makarov"];
		/*DayZ 2017
		_pistols = ["revolver_EP1","Makarov"];
		*/
	  };
	  case 1: {		//Military
		_pistols = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD", "revolver_EP1", "MakarovSD_DZN"];
	  };
	  default {		//Default
	    _pistols = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD", "revolver_EP1", "Makarov", "MakarovSD_DZN"];
	  };
	};
	
	_rnd = floor random (count _pistols);
	_pistol = _pistols select _rnd;
	_magazine = getArray (configFile >> "CfgWeapons" >> _pistol >> "magazines") select 0;

		for [{_i=1},{_i<=_nmags},{_i=_i+1}] do {
			_unit addMagazine _magazine;
		};
	
	_unit addWeapon _pistol;
	