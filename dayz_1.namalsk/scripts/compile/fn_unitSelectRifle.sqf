/*
	Usage: [_unit] call fnc_unitRifles;
*/
	private ["_unit","_rifle","_rifles","_mag","_mags","_rnd","_i","_chance","_weapongrade","_magazine"];
	_unit = _this select 0;
	_weapongrade = _this select 1;
	
	if ((_weapongrade == 0) && ((random 1) < aiNoRifleChance)) exitWith {};	//If weapon grade is zero and norifle check failed, exit script without assigning a rifle. (Bandit should already have at least a sidearm)
	
	_nmags = (floor (random 4)) + 1;										// Generate 1-4 mags for selected weapon.
    
	_chance = random 1; 													// Generate a random number between 0-1 to determine whether to increase weapon grade by 1.
	switch (true) do {
		case ((_chance < aiHeliCrashChance) && (_weapongrade < 3)): {		// Decide whether to assign helicrash gear
			_weapongrade = 3;
		};
		case ((_chance < aiBetterWeapon) && (_weapongrade < 3)): {			// Decide whether to increment weapon grade by 1.
			_weapongrade = _weapongrade + 1;
		};
	};

	switch (_weapongrade) do {
	  case 0: {		//Farm / Residential / Supermarket
		_rifles = ["Winchester1866", "LeeEnfield", "MR43", "huntingrifle"];
	  };
	  case 1: {		//Military
		_rifles = ["MP5SD", "MP5A5", "Saiga12K_DZN", "M16A2", "M16A2GL", "M4A1", "AK_107_kobra", "AKS_74_UN_kobra_DZN", "AK_74", "AKS_74_kobra", "AKS_74_U", "AK_47_M", "AK_107_GL_kobra"];
	  };
	  case 2: {		//Military Special
		_rifles = ["M4A1_HWS_GL_camo","M4A1_Aim", "M14_EP1", "M4A3_CCO_EP1", "DMR", "M24", "M16A4_ACG", "G36C", "G36K", "G36a", "M4A1_RCO_GL", "AK_74_GL", "AKS_74_pso", "AK_107_GL_pso_DZN", "M4A1_AIM_SD_camo", "G36_C_SD_eotech_DZN"];
	 };
	  case 3: {		//HeliCrash
		_rifles = ["BAF_AS50_scoped", "FN_FAL", "M107_DZ", "Mk_48_DZ", "PK_DZN", "Pecheneg_DZN", "RPK_74_DZN", "KSVK_DZN", "MG36", "SVD_CAMO", "Bizon", "bizon_silenced", "BAF_L85A2_UGL_ACOG_DZN", "FN_FAL_ANPVS4", "AKS_GOLD_DZN"];
	  };
	  default {		//Default - Select from all allowed weapons if weapongrade is not within 0-3 or not declared.
	    _rifles = ["MR43"];
	  };
	};

	_rnd = floor random (count _rifles);
	_rifle = _rifles select _rnd;
	_magazine = getArray (configFile >> "CfgWeapons" >> _rifle >> "magazines") select 0;
	
		for [{_i=1},{_i<=_nmags},{_i=_i+1}] do {
			_unit addMagazine _magazine;
		};
	
	_unit addWeapon _rifle;
	_unit selectweapon _rifle;