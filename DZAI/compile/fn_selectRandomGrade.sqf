//Generates a random weapon grade based on preset weights
private ["_weapongrade"];
//["_grades","_gradechances"];

//Import local array variables to global variables file
//_grades = [0,1,2,3];
//_gradechances = [0.20,0.60,0.15,0.05];

_weapongrade = [DZAI_weaponGrades,DZAI_gradeChances] call fnc_selectRandomWeighted;
if (DZAI_extdebug) then {diag_log format["DZAI Extended Debug: Generated weapon grade: %1 for AI.",_weapongrade];};

_weapongrade


