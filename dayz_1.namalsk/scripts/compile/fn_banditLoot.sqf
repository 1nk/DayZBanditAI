/*
	Usage: [_unit] call fnc_banditLoot;
*/
	private ["_unit","_danger","_danger2","_danger3","_danger4","_dangers","_misc","_miscs","_rnde","_rndm","_rnde2","_rndm2","_rndm3","_i", "_num1", "_num2", "_num3", "_num4"];
	_unit = _this select 0;

	_dangers = ["15Rnd_9x19_M9", "17Rnd_9x19_glock17", "7Rnd_45ACP_1911", "30Rnd_9x19_UZI", "15Rnd_9x19_M9SD", "6Rnd_45ACP", "8Rnd_9x18_MakarovSD", "8Rnd_9x18_Makarov", "20Rnd_762x51_DMR", "8Rnd_B_Beneli_74Slug", "30Rnd_556x45_Stanag", "30Rnd_556x45_StanagSD", "10Rnd_127x99_m107", "15Rnd_W1866_Slug", "10x_303", "20Rnd_762x51_FNFAL", "100Rnd_762x51_M240", "30Rnd_545x39_AK", "30Rnd_762x39_AK47", "5Rnd_762x51_M24", "30Rnd_9x19_MP5SD", "30Rnd_9x19_MP5", "5x_22_LR_17_HMR", "100Rnd_762x54_PK", "75Rnd_545x39_RPK", "8Rnd_B_Saiga12_74Slug", "30Rnd_556x45_G36SD", "30Rnd_556x45_G36", "5Rnd_127x108_KSVK", "100Rnd_556x45_BetaCMag", "30Rnd_545x39_AKSD", "10Rnd_762x54_SVD"];
	
	_rnde = floor random (count _dangers);
	_rndm = floor random (count _dangers);
	_rnde2 = floor random (count _dangers);
	_rndm2 = floor random (count _dangers);
	
	_num1 = floor(random 3);
	_num2 = floor(random 3);
	_num3 = floor(random 3);
	_num4 = floor(random 3);
	
	_danger = _dangers select _rnde;
	_danger2 = _dangers select _rndm;
	_danger3 = _dangers select _rnde2;
	_danger4 = _dangers select _rndm2;

	
	for [{_i=1},{_i<=2},{_i=_i+1}] do {
			_unit addMagazine _danger;
	};
	for [{_i=1},{_i<=2},{_i=_i+1}] do {
			_unit addMagazine _danger2;
	};
	
	(unitBackpack _unit) addMagazineCargo [_danger,_num1];
	(unitBackpack _unit) addMagazineCargo [_danger2,_num2];
	(unitBackpack _unit) addMagazineCargo [_danger3,_num3];
	(unitBackpack _unit) addMagazineCargo [_danger4,_num4];