//unitSelectPistol version 0.04
/*
	Usage: [_unit, _weapongrade] call fnc_unitSelectPistol;
*/
	private ["_unit","_pistol","_pistols","_rnd","_i","_weapongrade","_magazine"];
	_unit = _this select 0;
	_weapongrade = _this select 1;
	//_weapongrade = call fnc_selectRandomGrade;
	
	//sleep 10;
	
	_nmags = (floor (random DZAI_maxPistolMags)) + 1;						// Number of mags to generate for selected weapon.
	
	switch (_weapongrade) do {
	  case 0: {		//Farm / Residential / Supermarket
		_pistols = DZAI_PistolsDefault0;
	  };
	  case 1: {		//Military + Civilian
		_pistols = DZAI_PistolsDefault1;
	  };
	  case 2: {		//Military Only
		_pistols = DZAI_PistolsDefault2;
	  };
	  case 3: {		//Military Only
		_pistols = DZAI_PistolsDefault3;
	  };
	  default {		//Default - Give a Revolver if weapongrade is not within 0-3 or not declared.
	    _pistols = ["revolver_EP1"];
	  };
	};
	
	_rnd = floor random (count _pistols);
	_pistol = _pistols select _rnd;
	_magazine = getArray (configFile >> "CfgWeapons" >> _pistol >> "magazines") select 0;
	for [{_i=1},{_i<=_nmags},{_i=_i+1}] do {
			_unit addMagazine _magazine;
	};
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Pistol: %1 for AI.",_pistol];};
	
	_unit addWeapon _pistol;
	