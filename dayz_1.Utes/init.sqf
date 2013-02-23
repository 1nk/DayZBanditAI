/*	
	INITILIZATION
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance = 1;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;
//maxBldgRate = 5;					//Maximum rate of building-spawned AI creation (minutes)
//maxRdmRate = 5;					//Maximum rate of randomly-spawned AI creation (minutes)
//maxKSRate = 15;					//Maximum rate of kill-squad creation (minutes)
maxAIUnits = 10;					//Maximum number of building or randomly-spawned AI
minKillSquad = 0;					//Minimum number of surviving Kill Squad members before reinforcements may be spawned in. (0 = all members must die before more can be spawned)

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;

//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
//Load AI Bandit Module
call compile preprocessFileLineNumbers "scripts\init\dayz_ai_functions.sqf";
progressLoadingScreen 0.6;
call compile preprocessFileLineNumbers "scripts\mission\mission_functions.sqf";
progressLoadingScreen 0.8;
killSquadHQ = createCenter resistance;
resistance setFriend [east, 0];
resistance setFriend [west, 0];
killSquadGrp = createGroup resistance;
progressLoadingScreen 0.9;
zombie_generate = compile preprocessFileLineNumbers "scripts\compile\zombie_generate.sqf";
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if ((!isServer) && (isNull player) ) then
{
waitUntil {!isNull player};
waitUntil {time > 3};
};

if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
  waitUntil {time > 3};
};

if (isServer) then {
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
};
