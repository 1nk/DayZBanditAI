/*
	Usage: [_unit] call fnc_unitLoadout;
*/
	
	private ["_unit","_weapon","_mag","_i"];
	_unit = _this select 0;

	private ["_randomKit"];
	_randomKit = [] call fnc_ZH_randomLoadout;
	
	_weapon = _randomKit select 1;
	_mag = _randomKit select 2;

	removeAllWeapons _unit;

		for [{_i=1},{_i<=8},{_i=_i+1}] do {
			_unit addMagazine _mag;
		};
	
	_unit addWeapon _weapon;
	_unit selectweapon _weapon;
	 