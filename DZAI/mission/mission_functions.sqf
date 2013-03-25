/*
	if ((Player getVariable "SpareTime") > 0) then {...
	Usage: call compile preprocessFileLineNumbers "DZAI\mission\mission_functions.sqf";
*/

	waituntil {!isnil "bis_fnc_init"};
	fnc_spawnBandits_random = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnBandits_random.sqf";
	fnc_spawnBandits_bldgs = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnBandits_bldgs.sqf";
	fnc_spawnBandits_respawn = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnBandits_respawn.sqf";
	fnc_spawnBandits_respawn2 = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnBandits_respawn2.sqf";
	initialized = true;