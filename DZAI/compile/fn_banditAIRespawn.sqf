//AIRespawn2 Version 0.02
private ["_victim","_respawnpos","_sleeptime"];
_victim = _this select 0;

_respawnpos = position _victim;
_sleeptime = (DZAI_respawnTime1 + random(DZAI_respawnTime2));
if (DZAI_debug) then {diag_log format["DZAI Debug: AI killed, respawning in %1 seconds.",_sleeptime];};
sleep _sleeptime;

_nul = [1,75,350,300,_respawnpos] call fnc_spawnBandits_respawn;
sleep 10;
deleteVehicle _victim;

