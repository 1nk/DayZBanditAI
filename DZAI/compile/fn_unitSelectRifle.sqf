/*
	Usage: [_unit, _weapongrade] call fnc_unitSelectRifle;
*/
	private ["_unit","_rifle","_rifles","_rnd","_i","_chance","_weapongrade","_magazine"];
	_unit = _this select 0;
	_weapongrade = _this select 1;
	//_weapongrade = call fnc_selectRandomGrade;
	
	if ((_weapongrade == 0) && ((random 1) < DZAI_noRifleChance)) exitWith {};	//If weapon grade is zero and norifle check failed, exit script without assigning a rifle. (Bandit should already have at least a sidearm)
	
	_nmags = (floor (random DZAI_maxRifleMags)) + 1;						// Number of mags to generate for selected weapon.
    
	switch (_weapongrade) do {
	  case 0: {		//Farm / Residential / Supermarket
		_rifles = DZAI_RiflesDefault0;
	  };
	  case 1: {		//Military
		_rifles = DZAI_RiflesDefault1;
	  };
	  case 2: {		//Military Special
		_rifles = DZAI_RiflesDefault2;
	};
	  case 3: {		//HeliCrash
		_rifles = DZAI_RiflesDefault3;
	 };
	  default {		//Default - Give a Winchester if weapongrade is not within 0-3 or not declared.
	    _rifles = ["Winchester1866"];
	  };
	};

	_rnd = floor random (count _rifles);
	_rifle = _rifles select _rnd;
	_magazine = getArray (configFile >> "CfgWeapons" >> _rifle >> "magazines") select 0;
	for [{_i=1},{_i<=_nmags},{_i=_i+1}] do {
			_unit addMagazine _magazine;
		};
	if (DZAI_extdebug) then {diag_log format["DZAI Extended Debug: Generated Rifle: %1 for AI.",_rifle];};
	
	_unit addWeapon _rifle;
	_unit selectweapon _rifle;