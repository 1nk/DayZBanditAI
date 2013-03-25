private ["_victim","_respawnpos"];
_victim = _this select 0;

_respawnpos = position _victim;

sleep (DZAI_respawnTime1 + random(DZAI_respawnTime2));
_nul = [1,0,75,400,300,0,_respawnpos] call fnc_spawnBandits_respawn;
sleep 10;
deleteVehicle _victim;

