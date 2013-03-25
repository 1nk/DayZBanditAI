//Respawns AI using nearby buildings as possible spawn points
private ["_victim","_respawnpos"];
_victim = _this select 0;

_respawnpos = position _victim;

sleep (DZAI_respawnTime1 + random(DZAI_respawnTime2));
_nul = [1,0,450,0,_respawnpos] call fnc_spawnBandits_respawn2;
sleep 10;
deleteVehicle _victim;




