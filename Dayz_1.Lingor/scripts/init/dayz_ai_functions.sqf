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
	fnc_deleteGroup = compile preprocessFileLineNumbers "scripts\compile\fn_deleteGroup.sqf";
	fnc_patrolScript = compile preprocessFileLineNumbers "scripts\compile\fn_patrolScript.sqf";
	fnc_randomPos = compile preprocessFile "scripts\compile\fn_randomPos.sqf";
	fnc_setBehaviour = compile preprocessFileLineNumbers "scripts\compile\fn_setBehaviour.sqf";
	fnc_setSkills = compile preprocessFileLineNumbers "scripts\compile\fn_setSkills.sqf";
	fnc_spawn_deathFlies = compile preprocessFileLineNumbers "scripts\compile\fn_spawn_deathFlies.sqf";
	fnc_taskPatrol = compile preprocessFileLineNumbers "scripts\compile\fn_taskPatrol.sqf";
	fnc_taskPatrol_buildings = compile preprocessFileLineNumbers "scripts\compile\fn_taskPatrol_buildings.sqf";
	fnc_unitLoadout = compile preprocessFileLineNumbers "scripts\compile\fn_unitLoadout.sqf";
	fnc_unitLoadoutLoot = compile preprocessFileLineNumbers "scripts\compile\fn_unitLoadoutLoot.sqf";
	fnc_banditLoot = compile preprocessFileLineNumbers "scripts\compile\fn_banditLoot.sqf";
	fnc_genericLoot = compile preprocessFileLineNumbers "scripts\compile\fn_genericLoot.sqf";
	fnc_unitLoadoutLoot = compile preprocessFileLineNumbers "scripts\compile\fn_unitLoadoutLoot.sqf";
	//fnc_unitBackpack = compile preprocessFileLineNumbers "scripts\compile\fn_unitBackpack.sqf";
	fnc_unitBackpack_adjustable = compile preprocessFileLineNumbers "scripts\compile\fn_unitBackpack_adjustable.sqf";
	//fnc_unitRifles = compile preprocessFileLineNumbers "scripts\compile\fn_unitRifles.sqf";
	//fnc_unitRifles_adjustable = compile preprocessFileLineNumbers "scripts\compile\fn_unitRifles_adjustable.sqf";
	fnc_unitRifles_leveled = compile preprocessFileLineNumbers "scripts\compile\fn_unitRifles_leveled.sqf";
	fnc_unitPistols = compile preprocessFileLineNumbers "scripts\compile\fn_unitPistols.sqf";
	//fnc_unitPistols_adjustable = compile preprocessFileLineNumbers "scripts\compile\fn_unitPistols_adjustable.sqf";
	ai_fired = compile preprocessFileLineNumbers "scripts\compile\ai_fired.sqf";
	ai_targets = compile preprocessFileLineNumbers "scripts\compile\ai_targets.sqf";

initialized = true;