//AIRespawn Version 0.03
private ["_victim","_sleeptime"];
_victim = _this select 0;


_sleeptime = (DZAI_respawnTime1 + random(DZAI_respawnTime2));
if (DZAI_debug) then {diag_log format["DZAI Debug: AI killed (Random Spawn), respawning in %1 seconds.",_sleeptime];};
sleep _sleeptime;

_nul = ['center', 4000] spawn fnc_respawnBandits_random;
sleep 10;
deleteVehicle _victim;

