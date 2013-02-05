/*
	Syntax: type createUnit [ position, group, init, skill, rank]
	Usage: [_type, _position, _group, _init, _skill, _rank] call fnc_createUnit;
*/

	private ["_this", "_type", "_position", "_group", "_init", "_skill", "_rank"];
	_type = _this select 0;
	_position = _this select 1;
	_group = _this select 2;
	_init = _this select 3;
	_skill = _this select 4;
	_rank = _this select 5;

	_type createUnit [_position, _group, _init, _skill, _rank];