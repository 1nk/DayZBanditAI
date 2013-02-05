/*
	Usage: [_unit] call fnc_unitRifles;
*/
	private ["_unit","_rifle","_rifles","_mag","_mags","_rnd","_i", "_chance", "_weapongrade"];
	_unit = _this select 0;
	_weapongrade = _this select 1;
	
	_chance = floor (random 100) + 1; 	// Generate a random number between 1-100
	if ((_chance <= 15) && (_weapongrade < 3)) then {
		_weapongrade = _weapongrade + 1;
	};

	switch (_weapongrade) do {
	  case 0: {		//Civilian-Grade Weapons / Residential
		_rifles = ["Winchester1866", "LeeEnfield", "MR43", "huntingrifle","M1014"];
		_mags = ["15Rnd_W1866_Slug", "10x_303","2Rnd_shotgun_74Slug", "5x_22_LR_17_HMR","8Rnd_B_Beneli_74Slug"];
	  };
	  case 1: {		//Low-Grade Military Weapons / Military
		_rifles = ["MP5SD", "MP5A5", "M16A2", "M16A2GL", "M4A1", "AK_74", "AKS_74_kobra", "AKS_74_U", "AK_47_M","Remington870_lamp","Sa58P_EP1","Sa58V_EP1"];
		_mags = ["30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47","8Rnd_B_Beneli_74Slug","30Rnd_762x39_SA58","30Rnd_762x39_SA58"];
	  };
	  case 2: {		//Medium-Grade Military Weapons / Military Special
		_rifles = ["M4A1_HWS_GL_camo", "M14_EP1", "M4A3_CCO_EP1", "DMR", "M24", "M16A4_ACG", "M4A1_AIM_SD_camo","M4A1_Aim","Sa58V_RCO_EP1","Sa58V_CCO_EP1","M40A3"];
		_mags = ["30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "5Rnd_762x51_M24", "30Rnd_556x45_Stanag", "30Rnd_556x45_StanagSD","30Rnd_556x45_Stanag","30Rnd_762x39_SA58","30Rnd_762x39_SA58","5Rnd_762x51_M24"];
	  };
	  case 3: {		//High-Grade Military Weapons / HeliCrash
		_rifles = ["BAF_AS50_scoped", "FN_FAL", "M107_DZ", "Mk_48_DZ", "SVD_CAMO", "bizon_silenced", "FN_FAL_ANPVS4","BAF_L85A2_RIS_CWS","G36C","G36C_camo","G36A_camo","G36K_camo"];
		_mags = ["10Rnd_127x99_m107", "20Rnd_762x51_FNFAL", "10Rnd_127x99_m107", "100Rnd_762x51_M240", "10Rnd_762x54_SVD", "64Rnd_9x19_SD_Bizon", "20Rnd_762x51_FNFAL", "30Rnd_556x45_Stanag","30Rnd_556x45_G36","30Rnd_556x45_G36","30Rnd_556x45_G36","30Rnd_556x45_G36"];
	  };
	  default {		//Default
	    _rifles = ["MR43"];
		_mags = ["2Rnd_shotgun_74Pellets"];
	  };
	};

	_rnd = floor random (count _rifles);
	_rifle = _rifles select _rnd;
	_mag = _mags select _rnd;
	
		for [{_i=1},{_i<=4},{_i=_i+1}] do {
			_unit addMagazine _mag;
		};
	
	_unit addWeapon _rifle;
	_unit selectweapon _rifle;