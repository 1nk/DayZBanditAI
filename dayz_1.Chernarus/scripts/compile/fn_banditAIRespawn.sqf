private ["_killer","_killerpos"];
_killer = _this select 1;
_killerpos = position _killer;
if (isNil "_killerpos") exitWith {//titleText["Could not find killer's position!","PLAIN DOWN"];};
if ((random 1) > aiRespawnChance) exitWith {//titleText["aiRespawnChance check failed!","PLAIN DOWN"];};
sleep (20+(random 40));
_nul = [1,0,75,400,250,4,_killerpos] call fnc_spawnBandits_respawn;
