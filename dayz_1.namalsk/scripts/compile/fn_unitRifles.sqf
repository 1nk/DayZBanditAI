/*
	Usage: [_unit] call fnc_unitRifles;
*/
	private ["_unit","_rifle","_rifles","_mag","_mags","_rnd","_i"];
	_unit = _this select 0;

	//_rifles = ["M14_EP1", "Remington870_lamp", "M4A3_CCO_EP1", "M4A1_AIM_SD_camo", "BAF_AS50_scoped", "Winchester1866", "LeeEnfield", "FN_FAL", "m107_DZ", "Mk_48_DZ", "DMR", "M16A2", "M16A2GL", "AK_74", "M4A1_Aim", "AKS_74_kobra", "AKS_74_U", "AK_47_M", "M24", "M1014", "M4A1", "MP5SD", "MP5A5", "Huntingrifle", "M16A4_ACG", "AK_107_GL_kobra", "PK", "Pecheneg", "M40A3", "M4SPR", "BAF_LRR_scoped", "SCAR_H_CQC_CCO_SD", "Sa58v_EP1", "Sa58V_CCO_EP1", "SCAR_H_CQC_CCO", "AKS_GOLD"];
	//_mags = ["20Rnd_762x51_DMR", "8Rnd_B_Beneli_74Slug", "30Rnd_556x45_Stanag", "30Rnd_556x45_StanagSD", "10Rnd_127x99_m107", "15Rnd_W1866_Slug", "10x_303", "20Rnd_762x51_FNFAL", "10Rnd_127x99_m107", "100Rnd_762x51_M240", "20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "5Rnd_762x51_M24", "8Rnd_B_Beneli_74Slug", "30Rnd_556x45_Stanag", "30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "5x_22_LR_17_HMR", "30Rnd_556x45_Stanag", "30Rnd_762x39_AK47", "100Rnd_762x54_PK", "100Rnd_762x54_PK", "5Rnd_762x51_M24", "30Rnd_556x45_StanagSD", "5Rnd_86x70_L115A1", "20Rnd_762x51_SB_SCAR", "30Rnd_762x39_SA58", "30Rnd_762x39_SA58", "20Rnd_762x51_B_SCAR", "30Rnd_762x39_AK47"];
	
	_rifles = ["M14_EP1", "Remington870_lamp", "M4A3_CCO_EP1", "M4A1_AIM_SD_camo", "BAF_AS50_scoped", "Winchester1866", "LeeEnfield", "FN_FAL", "m107_DZ", "Mk_48_DZ", "DMR", "M16A2", "M16A2GL", "AK_74", "M4A1_Aim", "AKS_74_kobra", "AKS_74_U", "AK_47_M", "M24", "M1014", "M4A1", "MP5SD", "MP5A5", "Huntingrifle", "M16A4_ACG", "AK_107_GL_kobra", "PK_DZN", "Pecheneg_DZN", "RPK_74", "Saiga12K", "G36C", "G36K", "G36_C_SD_eotech", "G36a", "AK_74_GL", "AK_107_kobra", "M4A1_RCO_GL", "AKS_74_pso", "AK_107_GL_pso", "AKS_GOLD", "KSVK_DZN", "MG36", "AKS_74_UN_kobra", "SVD_CAMO"];
	_mags = ["20Rnd_762x51_DMR", "8Rnd_B_Beneli_74Slug", "30Rnd_556x45_Stanag", "30Rnd_556x45_StanagSD", "10Rnd_127x99_m107", "15Rnd_W1866_Slug", "10x_303", "20Rnd_762x51_FNFAL", "10Rnd_127x99_m107", "100Rnd_762x51_M240", "20Rnd_762x51_DMR", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "5Rnd_762x51_M24", "8Rnd_B_Beneli_74Slug", "30Rnd_556x45_Stanag", "30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "5x_22_LR_17_HMR", "30Rnd_556x45_Stanag", "30Rnd_762x39_AK47", "100Rnd_762x54_PK", "100Rnd_762x54_PK", "75Rnd_545x39_RPK", "8Rnd_B_Saiga12_74Slug", "30Rnd_556x45_G36", "30Rnd_556x45_G36", "30Rnd_556x45_G36SD", "30Rnd_556x45_G36", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_556x45_Stanag", "30Rnd_545x39_AK", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "5Rnd_127x108_KSVK", "100Rnd_556x45_BetaCMag", "30Rnd_545x39_AKSD", "10Rnd_762x54_SVD"];

	_rnd = floor random (count _rifles);
	_rifle = _rifles select _rnd;
	_mag = _mags select _rnd;
	
		for [{_i=1},{_i<=8},{_i=_i+1}] do {
			_unit addMagazine _mag;
		};
	
	_unit addWeapon _rifle;
	_unit selectweapon _rifle;