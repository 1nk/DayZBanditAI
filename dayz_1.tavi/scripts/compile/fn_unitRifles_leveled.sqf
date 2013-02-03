/*
	Usage: [_unit] call fnc_unitRifles;
*/
	private ["_unit","_rifle","_rifles","_mag","_mags","_rnd","_i", "_chance", "_weapongrade"];
	_unit = _this select 0;
	_weapongrade = _this select 1;
	
	_chance = floor (random 100) + 1; 					// Generate a random number between 1-100
	if ((_chance <= 10) && (_weapongrade < 3)) then {	// Chance to generate weapon grade one level higher, unless it's the maximum grade already.
		_weapongrade = _weapongrade + 1;
	};

	switch (_weapongrade) do {
	  case 0: {		//Civilian-Grade Weapons
		_rifles = ["Winchester1866", "LeeEnfield", "MR43", "huntingrifle"];
		_mags = ["15Rnd_W1866_Slug", "10x_303","2Rnd_shotgun_74Slug", "5x_22_LR_17_HMR"];
	  };
	  case 1: {		//Low-Grade Military Weapons
		_rifles = ["MP5SD", "MP5A5", "M16A2", "M16A2GL", "M4A1", "AK_74", "AKS_74_kobra", "AKS_74_U", "AK_47_M","M1014","Remington870_lamp"];
		_mags = ["30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47","8Rnd_B_Beneli_74Slug","8Rnd_B_Beneli_74Slug"];
	  };
	  case 2: {		//Medium-Grade Military Weapons
		_rifles = ["M4A1_HWS_GL_camo","M4A1_Aim", "M14_EP1", "M4A3_CCO_EP1", "DMR", "M24", "M16A4_ACG", "M4A1_AIM_SD_camo"];
		_mags = ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "20Rnd_762x51_DMR", "5Rnd_762x51_M24", "30Rnd_556x45_Stanag", "30Rnd_556x45_StanagSD"];
	  };
	  case 3: {		//High-Grade Military Weapons
		_rifles = ["BAF_AS50_scoped", "FN_FAL", "M107_DZ", "Mk_48_DZ", "SVD_CAMO", "bizon_silenced", "FN_FAL_ANPVS4"];
		_mags = ["10Rnd_127x99_m107", "20Rnd_762x51_FNFAL", "10Rnd_127x99_m107", "100Rnd_762x51_M240", "10Rnd_762x54_SVD", "64Rnd_9x19_SD_Bizon", "20Rnd_762x51_FNFAL"];
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
	
/*
[NEW] – Sa61_EP1 unbanned
[NEW] – Bizon unbanned
[NEW] – AK_74_GL unbanned
[NEW] – AK_74_GL_kobra unbanned
[NEW] – AK_107_kobra unbanned
[NEW] – AK_107_GL_kobra unbanned
[NEW] – AK_107_pso unbanned
[NEW] – AKS_74_pso unbanned
[NEW] – AKS_74_UN_kobra unbanned
[NEW] -* G36C_camo unbanned
[NEW] – G36_C_SD_camo unbanned
[NEW] -* G36A_camo unbanned
[NEW] -* G36K_camo unbanned
[NEW] -* G36C unbanned
[NEW] – G36a unbanned
[NEW] – G36K unbanned
[NEW] – M16A4 unbanned
[NEW] – M16A4_GL unbanned
[NEW] – M16A4_ACG_GL unbanned
[NEW] – M4A1_Aim_camo unbanned
[NEW] – M4A1_HWS_GL unbanned
[NEW] – M4A1_HWS_GL_camo unbanned
[NEW] – M4A1_HWS_GL_SD_Camo unbanned
[NEW] – M4A1_RCO_GL unbanned
[NEW] – M4A3_RCO_GL_EP1 unbanned
[NEW] -* Sa58P_EP1 unbanned
[NEW] -* Sa58V_EP1 unbanned
[NEW] -* Sa58V_RCO_EP1 unbanned
[NEW] -* Sa58V_CCO_EP1 unbanned
[NEW] – RPK_74 unbanned
[NEW] – Penecheg unbanned
[NEW] – PK unbanned
[NEW] – M60A4_EP1 unbanned
[NEW] -* M40A3 unbanned
[NEW] – M4SPR unbanned
[NEW] – SVD unbanned
[NEW] – SVD_NSPU_EP1 unbanned
[NEW] – VSS_Vintorez unbanned
[UPDATED] -* BAF_L85A2_RIS_CWS replaced with BAF_L85A2_RIS_Holo*/