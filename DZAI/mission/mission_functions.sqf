//Mission Functions Version 0.03
/*
	if ((Player getVariable "SpareTime") > 0) then {...
	Usage: call compile preprocessFileLineNumbers "DZAI\mission\mission_functions.sqf";
*/

	waituntil {!isnil "bis_fnc_init"};
	fnc_spawnBandits_random = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnBandits_random.sqf";
	fnc_spawnBandits_bldgs = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnBandits_bldgs.sqf";
	fnc_respawnBandits_random = compile preprocessFileLineNumbers "DZAI\mission\fnc\respawnBandits_random.sqf";
	fnc_respawnBandits_bldgs = compile preprocessFileLineNumbers "DZAI\mission\fnc\respawnBandits_bldgs.sqf";
	initialized = true;
