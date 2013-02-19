/*
	if ((Player getVariable "SpareTime") > 0) then {...
	Usage: call compile preprocessFileLineNumbers "dayz_ai_functions.sqf";
*/

	waituntil {!isnil "bis_fnc_init"};
	// [] call BIS_fnc_help;
	//fnc_addRating = compile preprocessFileLineNumbers "scripts\compile\fn_addRating.sqf";
	fnc_createGroup = compile preprocessFileLineNumbers "scripts\compile\fn_createGroup.sqf";
	fnc_createUnit = compile preprocessFileLineNumbers "scripts\compile\fn_createUnit.sqf";
	fnc_createUnit_Array = compile preprocessFileLineNumbers "scripts\compile\fn_createUnit_Array.sqf";
	//fnc_deleteGroup = compile preprocessFileLineNumbers "scripts\compile\fn_deleteGroup.sqf";
	//fnc_patrolScript = compile preprocessFileLineNumbers "scripts\compile\fn_patrolScript.sqf";
	fnc_randomPos = compile preprocessFile "scripts\compile\fn_randomPos.sqf";
	fnc_setBehaviour = compile preprocessFileLineNumbers "scripts\compile\fn_setBehaviour.sqf";
	fnc_setSkills = compile preprocessFileLineNumbers "scripts\compile\fn_setSkills.sqf";
	fnc_spawn_deathFlies = compile preprocessFileLineNumbers "scripts\compile\fn_spawn_deathFlies.sqf";
	fnc_unitConsumables = compile preprocessFileLineNumbers "scripts\compile\fn_unitConsumables.sqf";
	fnc_unitBackpackTools = compile preprocessFileLineNumbers "scripts\compile\fn_unitBackpackTools.sqf";
	fnc_unitSelectRifle = compile preprocessFileLineNumbers "scripts\compile\fn_unitSelectRifle.sqf";
	fnc_unitSelectPistol = compile preprocessFileLineNumbers "scripts\compile\fn_unitSelectPistol.sqf";
	ai_fired = compile preprocessFileLineNumbers "scripts\compile\ai_fired.sqf";
	ai_alertzombies = compile preprocessFileLineNumbers "scripts\compile\ai_alertzombies.sqf";
	getBuildingPosition = compile preprocessFileLineNumbers "scripts\compile\fn_getBuildingPosition.sqf";

initialized = true;