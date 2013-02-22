//Returns an array of possible building positions
private ["_bldgpos","_i","_j","_nearbldgs"];

_nearbldgs = _this select 0;

_bldgpos = [];
_i = 0;
_j = 0;
{
	private["_y"];
	_y = _x buildingPos _i;
	while {format["%1", _y] != "[0,0,0]"} do {
		_bldgpos set [_j, _y];
		_i = _i + 1;
		_j = _j + 1;
		_y = _x buildingPos _i;
	};
	_i = 0;
} forEach _nearbldgs;

_bldgpos