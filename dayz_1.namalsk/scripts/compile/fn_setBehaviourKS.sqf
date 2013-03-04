/*
	Usage: [_unit] call fnc_setBehaviour;
*/
	// private[""];
	_unit = _this select 0;
	//_type = _this select 1;
	
	_unit enableAI "TARGET";
	_unit enableAI "AUTOTARGET";
	_unit enableAI "MOVE";
	_unit enableAI "ANIM";
	_unit enableAI "FSM";
	_unit allowDammage true;