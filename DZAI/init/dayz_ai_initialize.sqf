//DayZ AI Bandit Module Version 0.02

if (!isDedicated) then { //Handle client-side zombie spawns
zombie_generate = compile preprocessFileLineNumbers "DZAI\compile\zombie_generate.sqf";
wild_spawnZombies = compile preprocessFileLineNumbers "DZAI\compile\wild_spawnZombies.sqf";
};
call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_variables.sqf";
if (!isServer) exitWith {};
call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_functions.sqf";
call compile preprocessFileLineNumbers "DZAI\mission\mission_functions.sqf";
_SideHQ_E = createcenter east;
_SideHQ_W = createcenter west;
_SideHQ_R = createcenter resistance;
resistance setFriend [east, 0];
resistance setFriend [west, 0];
EAST setFriend [WEST, 0];
EAST setFriend [resistance, 0];
WEST setFriend [EAST, 0];
WEST setFriend [resistance, 0];