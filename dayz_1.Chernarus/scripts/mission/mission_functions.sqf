/*
	if ((Player getVariable "SpareTime") > 0) then {...
	Usage: call compile preprocessFileLineNumbers "scripts\mission\mission_functions.sqf";
*/

	waituntil {!isnil "bis_fnc_init"};
	fnc_spawnBandits_random = compile preprocessFileLineNumbers "scripts\mission\fnc\spawnBandits_random.sqf";
	fnc_spawnBandits_bldgs = compile preprocessFileLineNumbers "scripts\mission\fnc\spawnBandits_bldgs.sqf";
	fnc_spawnBandits_respawn = compile preprocessFileLineNumbers "scripts\mission\fnc\spawnBandits_respawn.sqf";
	fnc_spawnBandits_killSquad = compile preprocessFileLineNumbers "scripts\mission\fnc\spawnBandits_killSquad.sqf";
	initialized = true;