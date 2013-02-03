/*
	Usage: [_unit] call fnc_unitPistols;
*/
	private ["_unit","_pistol","_pistols","_pistolmag","_pistolmags","_rnd","_i", "_chance", "_cPistols", "_rPistols", "_cPistolMags", "_rPistolMags"];
	_unit = _this select 0;
	
	_cPistols = ["Colt1911", "revolver_EP1", "Makarov"];
	_cPistolMags = ["7Rnd_45ACP_1911", "6Rnd_45ACP", "8Rnd_9x18_Makarov"];
	
	_rPistols = ["MakarovSD", "glock17_EP1", "UZI_EP1", "M9", "M9SD"];
	_rPistolMags = ["8Rnd_9x18_MakarovSD", "17Rnd_9x19_glock17", "30Rnd_9x19_UZI", "15Rnd_9x19_M9", "15Rnd_9x19_M9SD"];

	_chance = floor(random 10) + 1; 	// Generate a random number between 1-10
	
	if (_chance <= 4) then {
		
		_pistols = _rPistols;			// Assign pool of rare weapons and ammo
		_pistolmags = _rPistolMags;
	
	} else {
	
		_pistols = _cPistols;			// Assign pool of common weapons and ammo (Default)
		_pistolmags = _cPistolMags;
		
	}
	
	_rnd = floor random (count _pistols);
	_pistol = _pistols select _rnd;
	_pistolmag = _pistolmags select _rnd;

		for [{_i=1},{_i<=7},{_i=_i+1}] do {
			_unit addMagazine _pistolmag;
		};
	
	_unit addWeapon _pistol;