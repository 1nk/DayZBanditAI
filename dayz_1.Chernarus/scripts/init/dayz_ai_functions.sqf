/*
	if ((Player getVariable "SpareTime") > 0) then {...
	Usage: call compile preprocessFileLineNumbers "dayz_ai_functions.sqf";
*/

	waituntil {!isnil "bis_fnc_init"};
	// [] call BIS_fnc_help;
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
	fnc_setBehaviourKS = compile preprocessFileLineNumbers "scripts\compile\fn_setBehaviourKS.sqf";
	fnc_setSkillsKS = compile preprocessFileLineNumbers "scripts\compile\fn_setSkillsKS.sqf";
	fnc_banditAIRespawn = compile preprocessFileLineNumbers "scripts\compile\fn_banditAIRespawn.sqf";
	fnc_randomPos = compile preprocessFileLineNumbers "scripts\compile\fn_randomPos.sqf";
	
initialized = true;