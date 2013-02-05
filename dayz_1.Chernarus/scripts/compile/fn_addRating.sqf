/*
	Usage: [_unit] call fn_addRating;
*/
	private ["_unit", "_this", "_x"];
	_unit = _this select 0;
	
	while {true} do
	{
		while {alive _unit} do 
		{
			{
				_x addRating -200000;
			} forEach allMissionObjects "zZombie_Base", allMissionObjects "z_us_soldier_light", allMissionObjects "z_us_soldier", allMissionObjects "z_ru_soldier_light", allMissionObjects "z_ru_soldier", allMissionObjects "z_hunter", allMissionObjects "z_worker2", allMissionObjects "z_ru_soldier_pilot", allMissionObjects "z_nac_soldier", allMissionObjects "z_nac_soldier_heavy", allMissionObjects "z_soldier_heavy", allMissionObjects "z_soldier";
			
			sleep 0.1;
		};
		
		while {alive _unit} do 
		{
			{
				_x addRating -200000;
			} forEach dayz_playerTrigger;
			
			sleep 0.1;
		};
	};