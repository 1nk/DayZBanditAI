/*
	Usage: [_unit] call fnc_spawn_deathFlies;
*/

	// private[""];
	_unit = _this select 0;
	_position = getPosATL _unit;
	  sleep .2;
	_unit = [_position, 0.1, 1.5] call bis_fnc_flies;