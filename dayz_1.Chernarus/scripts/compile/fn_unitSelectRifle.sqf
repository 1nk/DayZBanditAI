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
		_rifles = ["Winchester1866", "LeeEnfield", "huntingrifle","M1014"];
	  };
	  case 1: {		//Military
		_rifles = ["M16A2","M16A2GL","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","M1014","DMR","M4A1","M14_EP1","Remington870_lamp","MP5A5","MP5SD","M4A3_CCO_EP1","Sa58P_EP1","Sa58V_EP1","BAF_L85A2_RIS_Holo"];
	  };
	  case 2: {		//Military Special
		_rifles = ["M16A2","M16A2GL","M249_DZ","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","SVD_CAMO","M1014","M107_DZ","DMR","M4A1","M14_EP1","Remington870_lamp","M240_DZ","M4A1_AIM_SD_camo","M16A4_ACG","M4A1_HWS_GL_camo","Mk_48_DZ","M4A3_CCO_EP1"];
	 };
	  case 3: {		//HeliCrash
		_rifles = ["FN_FAL","bizon_silenced","M14_EP1","FN_FAL_ANPVS4","M107_DZ","BAF_AS50_scoped","Mk_48_DZ","M249_DZ","DMR","G36C","G36C_camo","G36A_camo","G36K_camo","BAF_L85A2_RIS_SUSAT"];
	  };
	  default {		//Default - Select from all allowed weapons if weapongrade is not within 0-3 or not declared.
	    _rifles = ["Winchester1866", "LeeEnfield", "MR43", "huntingrifle","M1014","MP5SD", "MP5A5", "M16A2", "M16A2GL", "M4A1", "AK_74", "AKS_74_kobra", "AKS_74_U", "AK_47_M","Remington870_lamp","Sa58P_EP1","Sa58V_EP1","M4A1_HWS_GL_camo", "M14_EP1", "M4A3_CCO_EP1", "DMR", "M24", "M16A4_ACG", "M4A1_AIM_SD_camo","M4A1_Aim","Sa58V_RCO_EP1","Sa58V_CCO_EP1","M40A3","BAF_AS50_scoped", "FN_FAL", "M107_DZ", "Mk_48_DZ", "SVD_CAMO", "bizon_silenced", "FN_FAL_ANPVS4","G36C","G36C_camo","G36A_camo","G36K_camo","BAF_L85A2_RIS_Holo","BAF_L85A2_RIS_SUSAT"];
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