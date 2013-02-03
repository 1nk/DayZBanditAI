/*
	Usage: [_unit] call fnc_unitRifles;
*/
	private ["_unit","_rifle","_rifles","_mag","_mags","_rnd","_i", "_chance", "_cRifles", "_uRifles", "_rRifles", "_cMags", "_uMags", "_rMags","_lootopt"];
	_unit = _this select 0;
	_lootopt = _this select 1;
	
	//_lootopt = 2; // Options for AI bandit weapon selection - 0: No sniper rifles, no railgun. 1: No railgun. 2: All weapons available (Default).
	
	switch (_lootopt) do {
	  case 0: {		//No sniper rifles, no railgun
		_cRifles = ["Winchester1866", "LeeEnfield", "MP5SD", "MP5A5", "Saiga12K", "Huntingrifle"]; 	// Common Rifles
		_cMags = ["15Rnd_W1866_Slug", "10x_303", "30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "8Rnd_B_Saiga12_74Slug", "5x_22_LR_17_HMR"];	// Common Mags
	
		_uRifles = ["M4A1_HWS_GL_camo","M14_EP1", "M4A3_CCO_EP1", "M16A2", "M16A2GL", "M4A1_Aim", "M4A1", "M16A4_ACG", "G36C", "G36K", "G36a", "M4A1_RCO_GL", "AK_74_GL", "AK_107_kobra", "AKS_74_pso", "AK_107_GL_pso", "AKS_GOLD", "AKS_74_UN_kobra", "AK_74", "AKS_74_kobra", "AKS_74_U", "AK_47_M", "AK_107_GL_kobra", "M4A1_AIM_SD_camo", "G36_C_SD_eotech"]; 	// Uncommon Rifles
		_uMags = ["30Rnd_556x45_Stanag","20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "30Rnd_545x39_AKSD", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "30Rnd_545x39_AK", "30Rnd_556x45_StanagSD", "30Rnd_556x45_G36SD"];	// Uncommon Mags
		
		_rRifles = ["FN_FAL", "Mk_48_DZ", "PK_DZN", "Pecheneg_DZN", "RPK_74", "MG36", "Bizon", "bizon_silenced", "BAF_L85A2_UGL_ACOG"]; 	// Rare Rifles
		_rMags = ["20Rnd_762x51_FNFAL", "100Rnd_762x51_M240", "100Rnd_762x54_PK", "100Rnd_762x54_PK", "75Rnd_545x39_RPK", "100Rnd_556x45_BetaCMag", "64Rnd_9x19_Bizon", "64Rnd_9x19_SD_Bizon", "30Rnd_556x45_Stanag"]; 	// Rare Mags
	  };
	  case 1: {		//No railgun
		_cRifles = ["Winchester1866", "LeeEnfield", "Huntingrifle", "MP5SD", "MP5A5", "Saiga12K"]; 	// Common Rifles
		_cMags = ["15Rnd_W1866_Slug", "10x_303", "5x_22_LR_17_HMR", "30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "8Rnd_B_Saiga12_74Slug"];	// Common Mags
	
		_uRifles = ["M4A1_HWS_GL_camo","M14_EP1", "M4A3_CCO_EP1", "DMR", "M16A2", "M16A2GL", "M4A1_Aim", "M24", "M4A1", "M16A4_ACG", "G36C", "G36K", "G36a", "M4A1_RCO_GL", "AK_74_GL", "AK_107_kobra", "AKS_74_pso", "AK_107_GL_pso", "AKS_GOLD", "AKS_74_UN_kobra", "AK_74", "AKS_74_kobra", "AKS_74_U", "AK_47_M", "AK_107_GL_kobra", "M4A1_AIM_SD_camo", "G36_C_SD_eotech"]; 	// Uncommon Rifles
		_uMags = ["30Rnd_556x45_Stanag","20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "5Rnd_762x51_M24", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "30Rnd_545x39_AKSD", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "30Rnd_545x39_AK", "30Rnd_556x45_StanagSD", "30Rnd_556x45_G36SD"];	// Uncommon Mags
		
		_rRifles = ["BAF_AS50_scoped", "FN_FAL", "m107_DZ", "Mk_48_DZ", "PK_DZN", "Pecheneg_DZN", "RPK_74", "KSVK_DZN", "MG36", "SVD_CAMO", "Bizon", "bizon_silenced", "BAF_L85A2_UGL_ACOG", "FN_FAL_ANPVS4"]; 	// Rare Rifles
		_rMags = ["10Rnd_127x99_m107", "20Rnd_762x51_FNFAL", "10Rnd_127x99_m107", "100Rnd_762x51_M240", "100Rnd_762x54_PK", "100Rnd_762x54_PK", "75Rnd_545x39_RPK", "5Rnd_127x108_KSVK", "100Rnd_556x45_BetaCMag", "10Rnd_762x54_SVD", "64Rnd_9x19_Bizon", "64Rnd_9x19_SD_Bizon", "30Rnd_556x45_Stanag", "20Rnd_762x51_FNFAL"]; 	// Rare Mags
	  };
	  default {		//Default setting - all weapons available
	    _cRifles = ["Winchester1866", "LeeEnfield", "Huntingrifle", "MP5SD", "MP5A5", "Saiga12K"]; 	// Common Rifles
		_cMags = ["15Rnd_W1866_Slug", "10x_303", "5x_22_LR_17_HMR", "30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "8Rnd_B_Saiga12_74Slug"];	// Common Mags
	
		_uRifles = ["M4A1_HWS_GL_camo","M14_EP1", "M4A3_CCO_EP1", "DMR", "M16A2", "M16A2GL", "M4A1_Aim", "M24", "M4A1", "M16A4_ACG", "G36C", "G36K", "G36a", "M4A1_RCO_GL", "AK_74_GL", "AK_107_kobra", "AKS_74_pso", "AK_107_GL_pso", "AKS_GOLD", "AKS_74_UN_kobra", "AK_74", "AKS_74_kobra", "AKS_74_U", "AK_47_M", "AK_107_GL_kobra", "M4A1_AIM_SD_camo", "G36_C_SD_eotech"]; 	// Uncommon Rifles
		_uMags = ["30Rnd_556x45_Stanag","20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "5Rnd_762x51_M24", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "30Rnd_545x39_AKSD", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "30Rnd_545x39_AK", "30Rnd_556x45_StanagSD", "30Rnd_556x45_G36SD"];	// Uncommon Mags
		
		_rRifles = ["BAF_AS50_scoped", "FN_FAL", "m107_DZ", "Mk_48_DZ", "PK_DZN", "Pecheneg_DZN", "RPK_74", "KSVK_DZN", "MG36", "SVD_CAMO", "Bizon", "bizon_silenced", "BAF_L85A2_UGL_ACOG", "FN_FAL_ANPVS4", "nsw_er7s", "nsw_er7a"]; 	// Rare Rifles
		_rMags = ["10Rnd_127x99_m107", "20Rnd_762x51_FNFAL", "10Rnd_127x99_m107", "100Rnd_762x51_M240", "100Rnd_762x54_PK", "100Rnd_762x54_PK", "75Rnd_545x39_RPK", "5Rnd_127x108_KSVK", "100Rnd_556x45_BetaCMag", "10Rnd_762x54_SVD", "64Rnd_9x19_Bizon", "64Rnd_9x19_SD_Bizon", "30Rnd_556x45_Stanag", "20Rnd_762x51_FNFAL", "nsw_er7mm", "nsw_er7mm"]; 	// Rare Mags
	  };
	};
	/*
	_cRifles = ["Winchester1866", "LeeEnfield", "Huntingrifle", "MP5SD", "MP5A5", "Saiga12K"]; 	// Common Rifles
	_cMags = ["15Rnd_W1866_Slug", "10x_303", "5x_22_LR_17_HMR", "30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "8Rnd_B_Saiga12_74Slug"];	// Common Mags
	
	_uRifles = ["M14_EP1", "M4A3_CCO_EP1", "DMR", "M16A2", "M16A2GL", "M4A1_Aim", "M24", "M4A1", "M16A4_ACG", "G36C", "G36K", "G36a", "M4A1_RCO_GL", "AK_74_GL", "AK_107_kobra", "AKS_74_pso", "AK_107_GL_pso", "AKS_GOLD", "AKS_74_UN_kobra", "AK_74", "AKS_74_kobra", "AKS_74_U", "AK_47_M", "AK_107_GL_kobra", "M4A1_AIM_SD_camo", "G36_C_SD_eotech"]; 	// Uncommon Rifles
	_uMags = ["20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "5Rnd_762x51_M24", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "30Rnd_545x39_AKSD", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "30Rnd_545x39_AK", "30Rnd_556x45_StanagSD", "30Rnd_556x45_G36SD"];	// Uncommon Mags
		
	_rRifles = ["BAF_AS50_scoped", "FN_FAL", "m107_DZ", "Mk_48_DZ", "PK_DZN", "Pecheneg_DZN", "RPK_74", "KSVK_DZN", "MG36", "SVD_CAMO", "Bizon", "bizon_silenced", "BAF_L85A2_UGL_ACOG", "FN_FAL_ANPVS4"]; 	// Rare Rifles
	_rMags = ["10Rnd_127x99_m107", "20Rnd_762x51_FNFAL", "10Rnd_127x99_m107", "100Rnd_762x51_M240", "100Rnd_762x54_PK", "100Rnd_762x54_PK", "75Rnd_545x39_RPK", "5Rnd_127x108_KSVK", "100Rnd_556x45_BetaCMag", "10Rnd_762x54_SVD", "64Rnd_9x19_Bizon", "64Rnd_9x19_SD_Bizon", "30Rnd_556x45_Stanag", "20Rnd_762x51_FNFAL"]; 	// Rare Mags
	*/
	
	_chance = floor(random 100) + 1; 	// Generate a random number between 1-100
	
	switch (true) do {
	  case (_chance <= 6): {		// Assign pool of rare weapons and ammo
	    _rifles = _rRifles;
		_mags = _rMags;
	  };
	  case (_chance <= 82): {		// Assign pool of uncommon weapons and ammo
	    _rifles = _uRifles;
		_mags = _uMags;
	  };
	  default {
	    _rifles = _cRifles;			// Assign pool of common weapons and ammo (Default)
		_mags = _cMags;
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