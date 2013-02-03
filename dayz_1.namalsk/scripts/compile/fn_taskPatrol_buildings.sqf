/*
	File: taskPatrol.sqf
	Author: Joris-Jan van 't Land

	Description:
	Create a random patrol of several waypoints around a given position.

	Parameter(s):
	_this select 0: the group to which to assign the waypoints (Group)
	_this select 1: the position on which to base the patrol (Array)
	_this select 2: the maximum distance between waypoints (Number)
	_this select 3: the patrol mode
	_this select 4: (optional) blacklist of areas (Array)
	
	Returns:
	Boolean - success flag
*/

	//Validate parameter count
	if ((count _this) < 3) exitWith {debugLog "Log: [taskPatrol] Function requires at least 3 parameters!"; false};

	private ["_grp", "_pos", "_maxDist", "_blacklist","_state","_bldgpos","_maxwait"];
	_grp = _this select 0;
	_pos = _this select 1;
	//_maxDist = _this select 2;
	_state = _this select 3;
	_bldgpos = _this select 4;
	_blacklist = [];
	//_maxwait = 300;
	if ((count _this) > 5) then {_blacklist = _this select 5};

	HotZoneDistances = HotZoneDistances + [_maxDist];

	//Validate parameters
	if ((typeName _grp) != (typeName grpNull)) exitWith {debugLog "Log: [taskPatrol] Group (0) must be a Group!"; false};
	if ((typeName _pos) != (typeName [])) exitWith {debugLog "Log: [taskPatrol] Position (1) must be an Array!"; false};
	//if ((typeName _maxDist) != (typeName 0)) exitWith {debugLog "Log: [taskPatrol] Maximum distance (2) must be a Number!"; false};
	if ((typeName _blacklist) != (typeName [])) exitWith {debugLog "Log: [taskPatrol] Blacklist (4) must be an Array!"; false};

	//_grp setBehaviour "SAFE";
	_grp setBehaviour _state;

	//Create a string of randomly placed waypoints.
	//private ["_prevPos"];
	//_prevPos = _pos;
	for "_i" from 0 to (3 + (floor (random 3))) do
	{
		private ["_wp", "_newPos"];
		//_newPos = [_prevPos, 50, _maxDist, 1, 0, 60 * (pi / 180), 0, _blacklist] call BIS_fnc_findSafePos;
		_newPos = _bldgpos select floor(random count _bldgpos);
		//_prevPos = _newPos;

		_wp = _grp addWaypoint [_newPos, 0];
		_wp setWaypointType "MOVE";
		_wp setWaypointCompletionRadius 20;

				if (DebugM > 0) then {
				_m= format["%1%2",(_newPos select 0),(_newPos select 1)];
					_m = createMarker[_m,[_newPos select 0,_newPos select 1]];
					_m setMarkerShape "ICON";
					_m setMarkerType "DOT";
			};

		//Set the group's speed and formation at the first waypoint.
		if (_i == 0) then
		{
			_wp setWaypointSpeed "LIMITED";
			_wp setWaypointFormation "STAG COLUMN";
		};
	};

	//Cycle back to the first position.
	private ["_wp"];
	_wp = _grp addWaypoint [_pos, 0];
	_wp setWaypointType "CYCLE";
	_wp setWaypointCompletionRadius 20;

	true