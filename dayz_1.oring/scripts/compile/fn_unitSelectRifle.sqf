/*
	Usage: [_unit] call fnc_unitRifles;
*/
	private ["_unit","_rifle","_rifles","_mag","_mags","_rnd","_i","_chance","_weapongrade"];
	_unit = _this select 0;
	_weapongrade = _this select 1;
	
	//_nmags = (floor (random 4)) + 1;		// Generate 1-4 mags for selected weapon.
	
    _chance = (floor (random 100)) + 1; 	// Generate a random number between 1-100
	if ((_chance <= 10) && (_weapongrade < 3)) then { //% chance to select one-higher weapon grade
		_weapongrade = _weapongrade + 1;
	};

	switch (_weapongrade) do {
	  case 0: {		//Farm / Residential / Supermarket
	  //Removed weapons
	  //["MR43", ];
	  //["2Rnd_shotgun_74Slug",];
		_rifles = ["Winchester1866", "LeeEnfield", "huntingrifle","M1014"];
		_mags = ["15Rnd_W1866_Slug", "10x_303", "5x_22_LR_17_HMR","8Rnd_B_Beneli_74Slug"];
		/*DayZ 2017
		_rifles = ["LeeEnfield","Winchester1866","Crossbow","MR43"];
		_mags = ["10x_303","15Rnd_W1866_Slug","BoltSteel","2Rnd_shotgun_74Slug"];
		*/
	  };
	  case 1: {		//Military
		_rifles = ["M16A2","M16A2GL","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","M1014","DMR","M4A1","M14_EP1","Remington870_lamp","MP5A5","MP5SD","M4A3_CCO_EP1","Sa58P_EP1","Sa58V_EP1"];
		_mags = ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK","30Rnd_556x45_Stanag", "30Rnd_545x39_AK","30Rnd_545x39_AK","30Rnd_762x39_AK47","5Rnd_762x51_M24","8Rnd_B_Beneli_74Slug","20Rnd_762x51_DMR","30Rnd_556x45_Stanag","20Rnd_762x51_DMR","8Rnd_B_Beneli_74Slug","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","30Rnd_556x45_Stanag","30Rnd_762x39_SA58","30Rnd_762x39_SA58"];
		/*DayZ 2017
		_rifles = ["LeeEnfield","Winchester1866","Remington870_lamp"];
		_mags = ["10x_303","15Rnd_W1866_Slug","8Rnd_B_Beneli_74Slug"];
		*/
	  };
	  case 2: {		//Military Special
		_rifles = ["M16A2","M16A2GL","M249_DZ","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","SVD_CAMO","M1014","M107_DZ","DMR","M4A1","M14_EP1","Remington870_lamp","M240_DZ","M4A1_AIM_SD_camo","M16A4_ACG","M4A1_HWS_GL_camo","Mk_48_DZ","M4A3_CCO_EP1"];
		_mags = ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","200Rnd_556x45_M249","30Rnd_545x39_AK","30Rnd_556x45_Stanag","30Rnd_545x39_AK","30Rnd_545x39_AK","30Rnd_762x39_AK47","5Rnd_762x51_M24","10Rnd_762x54_SVD","8Rnd_B_Beneli_74Slug","10Rnd_127x99_m107"," 20Rnd_762x51_DMR","30Rnd_556x45_Stanag","20Rnd_762x51_DMR","8Rnd_B_Beneli_74Slug","100Rnd_762x51_M240","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","100Rnd_762x51_M240","30Rnd_556x45_Stanag"];
		/*DayZ 2017
		_rifles = ["LeeEnfield","Winchester1866","Remington870_lamp"];
		_mags = ["10x_303","15Rnd_W1866_Slug","8Rnd_B_Beneli_74Slug"];
		*/
	 };
	  case 3: {		//HeliCrash
		_rifles = ["FN_FAL","bizon_silenced","M14_EP1","FN_FAL_ANPVS4","M107_DZ","BAF_AS50_scoped","Mk_48_DZ","M249_DZ","BAF_L85A2_RIS_Holo","DMR","G36C","G36C_camo","G36A_camo","G36K_camo"];
		_mags = ["20Rnd_762x51_FNFAL","64Rnd_9x19_SD_Bizon", "20Rnd_762x51_DMR","20Rnd_762x51_FNFAL","10Rnd_127x99_m107","10Rnd_127x99_m107","100Rnd_762x51_M240","200Rnd_556x45_M249","30Rnd_556x45_Stanag", "20Rnd_762x51_DMR","30Rnd_556x45_G36","30Rnd_556x45_G36","30Rnd_556x45_G36","30Rnd_556x45_G36"];
	  };
	  default {		//Default
	    _rifles = ["Winchester1866", "LeeEnfield", "MR43", "huntingrifle","M1014","MP5SD", "MP5A5", "M16A2", "M16A2GL", "M4A1", "AK_74", "AKS_74_kobra", "AKS_74_U", "AK_47_M","Remington870_lamp","Sa58P_EP1","Sa58V_EP1","M4A1_HWS_GL_camo", "M14_EP1", "M4A3_CCO_EP1", "DMR", "M24", "M16A4_ACG", "M4A1_AIM_SD_camo","M4A1_Aim","Sa58V_RCO_EP1","Sa58V_CCO_EP1","M40A3","BAF_AS50_scoped", "FN_FAL", "M107_DZ", "Mk_48_DZ", "SVD_CAMO", "bizon_silenced", "FN_FAL_ANPVS4","G36C","G36C_camo","G36A_camo","G36K_camo","BAF_L85A2_RIS_Holo"];
		_mags = ["15Rnd_W1866_Slug", "10x_303","2Rnd_shotgun_74Slug", "5x_22_LR_17_HMR","8Rnd_B_Beneli_74Slug","30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47","8Rnd_B_Beneli_74Slug","30Rnd_762x39_SA58","30Rnd_762x39_SA58","30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "5Rnd_762x51_M24", "30Rnd_556x45_Stanag", "30Rnd_556x45_StanagSD","30Rnd_556x45_Stanag","30Rnd_762x39_SA58","30Rnd_762x39_SA58","5Rnd_762x51_M24","10Rnd_127x99_m107", "20Rnd_762x51_FNFAL", "10Rnd_127x99_m107", "100Rnd_762x51_M240", "10Rnd_762x54_SVD", "64Rnd_9x19_SD_Bizon", "20Rnd_762x51_FNFAL","30Rnd_556x45_G36","30Rnd_556x45_G36","30Rnd_556x45_G36","30Rnd_556x45_G36","30Rnd_556x45_Stanag"];
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