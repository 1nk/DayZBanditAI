/*
	Syntax: Object = group createUnit [type, position, markers, placement, special]
	Usage: [_object, _group, _type, _position, _markers, _placement, _special] call fnc_createUnit_Array;
*/

	private ["_this", "_object", "_group", "_type", "_position", "_markers", "_placement", "_special"];
	_object = _this select 0;
	_group = _this select 0;
    _type = _this select 0;
    _position = _this select 1;
    _markers = _this select 2;
    _placement = _this select 3;
    _special = _this select 4;

	_object = _group createUnit [_type, _position, [_markers], _placement, _special];