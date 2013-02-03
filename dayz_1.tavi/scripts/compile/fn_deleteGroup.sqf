/*
	Syntax: deleteGroup group
	Usage: [_group] call fnc_deleteGroup;
*/

	private ["_this", "_group"];
	_group = _this select 0;

	deleteGroup _group;