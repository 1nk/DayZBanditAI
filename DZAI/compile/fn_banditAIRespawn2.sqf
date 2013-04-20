//AIRespawn2 Version 0.03
private ["_victim","_respawnpos","_sleeptime"];
_victim = _this select 0;

_respawnpos = position _victim;
_sleeptime = (DZAI_respawnTime1 + random(DZAI_respawnTime2));
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI killed (Building Spawn), respawning in %1 seconds.",_sleeptime];};
sleep _sleeptime;

_nul = [_respawnpos,400] call fnc_respawnBandits_bldgs;
sleep 10;
deleteVehicle _victim;




