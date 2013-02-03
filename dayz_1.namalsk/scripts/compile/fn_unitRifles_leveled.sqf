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
	  case 0: {		//Civilian-Grade Weapons
		_rifles = ["Winchester1866", "LeeEnfield", "MR43", "huntingrifle"];
		_mags = ["15Rnd_W1866_Slug", "10x_303","2Rnd_shotgun_74Slug", "5x_22_LR_17_HMR"];
	  };
	  case 1: {		//Low-Grade Military Weapons
		_rifles = ["MP5SD", "MP5A5", "Saiga12K", "M16A2", "M16A2GL", "M4A1", "AK_107_kobra", "AKS_74_UN_kobra", "AK_74", "AKS_74_kobra", "AKS_74_U", "AK_47_M", "AK_107_GL_kobra"];
		_mags = ["30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "8Rnd_B_Saiga12_74Slug", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AKSD", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "30Rnd_545x39_AK"];
	  };
	  case 2: {		//Medium-Grade Military Weapons
		_rifles = ["M4A1_HWS_GL_camo","M4A1_Aim", "M14_EP1", "M4A3_CCO_EP1", "DMR", "M24", "M16A4_ACG", "G36C", "G36K", "G36a", "M4A1_RCO_GL", "AK_74_GL", "AKS_74_pso", "AK_107_GL_pso", "M4A1_AIM_SD_camo", "G36_C_SD_eotech"];
		_mags = ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "5Rnd_762x51_M24", "30Rnd_556x45_Stanag", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_556x45_StanagSD", "30Rnd_556x45_G36SD"];
	  };
	  case 3: {		//High-Grade Military Weapons
		_rifles = ["BAF_AS50_scoped", "FN_FAL", "M107_DZ", "Mk_48_DZ", "PK_DZN", "Pecheneg_DZN", "RPK_74", "KSVK_DZN", "MG36", "SVD_CAMO", "Bizon", "bizon_silenced", "BAF_L85A2_UGL_ACOG", "FN_FAL_ANPVS4", "AKS_GOLD"];
		_mags = ["10Rnd_127x99_m107", "20Rnd_762x51_FNFAL", "10Rnd_127x99_m107", "100Rnd_762x51_M240", "100Rnd_762x54_PK", "100Rnd_762x54_PK", "75Rnd_545x39_RPK", "5Rnd_127x108_KSVK", "100Rnd_556x45_BetaCMag", "10Rnd_762x54_SVD", "64Rnd_9x19_Bizon", "64Rnd_9x19_SD_Bizon", "30Rnd_556x45_Stanag", "20Rnd_762x51_FNFAL", "30Rnd_762x39_AK47"];
	  };
	  default {		//Default
	    _rifles = ["MR43"];
		_mags = ["2Rnd_shotgun_74Slug"];
	  };
	};

	_rnd = floor random (count _rifles);
	_rifle = _rifles select _rnd;
	_mag = _mags select _rnd;
	
		for [{_i=1},{_i<=8},{_i=_i+1}] do {
			_unit addMagazine _mag;
		};
	
	_unit addWeapon _rifle;
	_unit selectweapon _rifle;