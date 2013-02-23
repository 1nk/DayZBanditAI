/*
	Usage: [_unit] call fnc_unitPistols;
*/
	private ["_unit","_pistol","_pistols","_pistolmag","_pistolmags","_rnd","_i","_weapongrade"];
	_unit = _this select 0;
	_weapongrade = _this select 1;
	
	//_nmags = (floor (random 4)) + 1;	// Generate 1-4 mags for selected weapon.

	if (_weapongrade > 1) then {  	//For pistols, any weapon grade higher than zero ("Civilian") is "Military".
		_weapongrade = 1;
	};

	switch (_weapongrade) do {
	  case 0: {		//Farm / Residential / Supermarket
		_pistols = ["Colt1911", "revolver_EP1", "Makarov"];
		_pistolmags = ["7Rnd_45ACP_1911", "6Rnd_45ACP", "8Rnd_9x18_Makarov"];
		/*DayZ 2017
		_pistols = ["revolver_EP1","Makarov"];
		_pistolmags = ["6Rnd_45ACP","8Rnd_9x18_Makarov"];
		*/
	  };
	  case 1: {		//Military
		_pistols = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD", "revolver_EP1"];
		_pistolmags = ["15Rnd_9x19_M9", "17Rnd_9x19_glock17", "7Rnd_45ACP_1911", "30Rnd_9x19_UZI", "15Rnd_9x19_M9SD", "6Rnd_45ACP"];
	  };
	  default {		//Default
	    _pistols = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD", "revolver_EP1", "Makarov"];
		_pistolmags = ["15Rnd_9x19_M9", "17Rnd_9x19_glock17", "7Rnd_45ACP_1911", "30Rnd_9x19_UZI", "15Rnd_9x19_M9SD", "6Rnd_45ACP", "8Rnd_9x18_Makarov"];
	  };
	};
	
	_rnd = floor random (count _pistols);
	_pistol = _pistols select _rnd;
	_pistolmag = _pistolmags select _rnd;

		for [{_i=1},{_i<=4},{_i=_i+1}] do {
			_unit addMagazine _pistolmag;
		};
	
	_unit addWeapon _pistol;
	