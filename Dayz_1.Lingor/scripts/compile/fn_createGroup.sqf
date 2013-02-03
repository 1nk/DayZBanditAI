/*
	Syntax: Group = createGroup side
	Usage: [_group, _side] call fnc_createGroup;
*/

	private ["_this", "_group", "_side"];
	_group = _this select 0;
	_side = _this select 1;

	_group = createGroup _side;