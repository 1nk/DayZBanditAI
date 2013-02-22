/*
	Usage: nul = [this, 500, ""patrolMarker"", ""patrolMarker"", 500, ""AWARE"", 100, ""LIMITED"", ""FILE"", 0, 0] call fnc_patrolScript;
*/

	private ["_wp","_ranPos","_patrolMarker","_patrolRadius","_grp","_iniPos","_oldPos","_newPos","_grp","_spawnRadius","_unit","_spawnMarker","_unitBehaviour","_existChance","_unitSpeed","_unitFormation","_numGrp","_flyInHeight"];

	_unit          = _this select 0;
	_spawnRadius   = _this select 1;
	_spawnMarker   = _this select 2;
	_patrolMarker  = _this select 3;
	_patrolRadius  = _this select 4;
	_unitBehaviour = _this select 5;
	_existChance   = _this select 6;
	_unitSpeed     = _this select 7;
	_unitFormation = _this select 8;
	_unitWaittime  = _this select 9;
	_flyInHeight   = _this select 10;

	_unit flyInHeight _flyInHeight;
	_grp = group _unit;
	_chance = ceil(random 100);

	if (_chance > _existChance) then { {deleteVehicle vehicle _x; deleteVehicle _x; sleep 0.1;} forEach units _grp; };

	_wp = _grp addWaypoint [getMarkerPos _patrolMarker, 1];
	_wp setWaypointBehaviour _unitBehaviour;
	_wp setWaypointSpeed _unitSpeed;
	_wp setWaypointFormation _unitFormation;
	_wp setWaypointType "MOVE"; 
	_wp setWaypointCombatMode "RED";
	[_grp, 1] setWaypointPosition [getMarkerPos _spawnMarker, _spawnRadius];
	_iniPos = getWPPos [_grp,1];

	if (_unit isKindOf "Man") then 
		{
			{_x setpos _iniPos;} forEach units group _unit;
			[_grp, 1] setWaypointPosition [getMarkerPos _patrolMarker, _patrolRadius];

		sleep 2;

	while {{alive _x} count units _grp > 0} do
		{
			waitUntil{ ((getPos leader _grp) distance (getWPPos [_grp,1]) < 5) };
			sleep _unitWaittime;
			[_grp, 1] setWaypointPosition [getMarkerPos _patrolMarker, _patrolRadius];
		};
	};

	if(_unit isKindOf "Air") then 
		{
			{vehicle _x setpos [(_iniPos select 0) + random 50, (_iniPos select 1) + random 50, _flyInHeight];} forEach units group _unit;
			[_grp, 1] setWaypointPosition [getMarkerPos _patrolMarker, _patrolRadius];

		sleep 2;

	while {{alive _x} count units _grp > 0} do
		{
			waitUntil{ ((getPos leader _grp) distance (getWPPos [_grp,1]) < (_flyInHeight * 3) - _flyInHeight) };
			sleep _unitWaittime;
			[_grp, 1] setWaypointPosition [getMarkerPos _patrolMarker, _patrolRadius];
		};
	};

	if(_unit isKindOf "LandVehicle") then 
		{
			{vehicle _x setpos [(_iniPos select 0) + random 25, (_iniPos select 1) + random 25, 0];} forEach units group _unit;
			[_grp, 1] setWaypointPosition [getMarkerPos _patrolMarker, _patrolRadius];

		sleep 2;

	while {{alive _x} count units _grp > 0} do
		{
			waitUntil{ ((getPos leader _grp) distance (getWPPos [_grp,1]) < 20) };
			sleep _unitWaittime;
			[_grp, 1] setWaypointPosition [getMarkerPos _patrolMarker, _patrolRadius];
		};
	};