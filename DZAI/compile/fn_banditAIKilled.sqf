//AIKilled Version 0.04
//Updates current live AI count, adds loot to AI corpse if killed by a player
private["_weapongrade","_victim","_killer"];
_victim = _this select 0;
_killer = _this select 1;

DZAI_numAIUnits = (DZAI_numAIUnits - 1);
if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI killed. %1 AI units left.",DZAI_numAIUnits];};

if (!isPlayer _killer) exitWith {};
_weapongrade = [DZAI_weaponGrades,DZAI_gradeChances] call fnc_selectRandomWeighted;
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI killed by player. Generating loot with weapongrade %1.",_weapongrade];};
[_victim, _weapongrade] call fnc_unitSelectPistol;				// Add sidearm
[_victim] call fnc_unitConsumables;								// Add food, medical, misc, skin
[_victim] call fnc_unitTools;									// Add tools and gadget
