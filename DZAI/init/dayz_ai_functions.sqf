//DayZ AI Bandit Module Version 0.04
/*
	if ((Player getVariable "SpareTime") > 0) then {...
	Usage: call compile preprocessFileLineNumbers "dayz_ai_functions.sqf";
*/

	waituntil {!isnil "bis_fnc_init"};
	// [] call BIS_fnc_help;
	fnc_setBehaviour = compile preprocessFileLineNumbers "DZAI\compile\fn_setBehaviour.sqf";
	fnc_setSkills = compile preprocessFileLineNumbers "DZAI\compile\fn_setSkills.sqf";
	fnc_spawn_deathFlies = compile preprocessFileLineNumbers "DZAI\compile\fn_spawn_deathFlies.sqf";
	fnc_unitConsumables = compile preprocessFileLineNumbers "DZAI\compile\fn_unitConsumables.sqf";
	fnc_unitBackpack = compile preprocessFileLineNumbers "DZAI\compile\fn_unitBackpack.sqf";
	fnc_unitTools = compile preprocessFileLineNumbers "DZAI\compile\fn_unitTools.sqf";
	fnc_unitSelectRifle = compile preprocessFileLineNumbers "DZAI\compile\fn_unitSelectRifle.sqf";
	fnc_unitSelectPistol = compile preprocessFileLineNumbers "DZAI\compile\fn_unitSelectPistol.sqf";
	ai_fired = compile preprocessFileLineNumbers "DZAI\compile\ai_fired.sqf";
	ai_alertzombies = compile preprocessFileLineNumbers "DZAI\compile\ai_alertzombies.sqf";
	getBuildingPosition = compile preprocessFileLineNumbers "DZAI\compile\fn_getBuildingPosition.sqf";
	fnc_banditAIKilled = compile preprocessFileLineNumbers "DZAI\compile\fn_banditAIKilled.sqf";
	fnc_banditAIRespawn = compile preprocessFileLineNumbers "DZAI\compile\fn_banditAIRespawn.sqf";
	fnc_banditAIRespawn2 = compile preprocessFileLineNumbers "DZAI\compile\fn_banditAIRespawn2.sqf";
	fnc_randomPos = compile preprocessFileLineNumbers "DZAI\compile\fn_randomPos.sqf";
	//fnc_selectRandomGrade = compile preprocessFileLineNumbers "DZAI\compile\fn_selectRandomGrade.sqf";
	fnc_selectRandomWeighted = compile preprocessFileLineNumbers "DZAI\compile\fn_selectRandomWeighted.sqf";
	
initialized = true;
DZAI_initialized = true;
if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: DZAI Functions loaded."];};