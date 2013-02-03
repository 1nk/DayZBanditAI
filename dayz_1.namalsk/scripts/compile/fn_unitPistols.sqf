/*
	Usage: [_unit] call fnc_unitPistols;
*/
	private ["_unit","_pistol","_pistols","_pistolmag","_pistolmags","_rnd","_i"];
	_unit = _this select 0;

	_pistols = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD", "revolver_EP1", "MakarovSD", "Makarov"];
	_pistolmags = ["15Rnd_9x19_M9", "17Rnd_9x19_glock17", "7Rnd_45ACP_1911", "30Rnd_9x19_UZI", "15Rnd_9x19_M9SD", "6Rnd_45ACP", "8Rnd_9x18_MakarovSD", "8Rnd_9x18_Makarov"];
	
	_rnd = floor random (count _pistols);
	_pistol = _pistols select _rnd;
	_pistolmag = _pistolmags select _rnd;

		for [{_i=1},{_i<=7},{_i=_i+1}] do {
			_unit addMagazine _pistolmag;
		};
	
	_unit addWeapon _pistol;