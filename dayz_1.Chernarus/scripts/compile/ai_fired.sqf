private["_unit","_ammo","_audible","_distance","_listTalk","_weapon", "_nfactor"];
//[unit, weapon, muzzle, mode, ammo, magazine, projectile]
_unit = 		_this select 0;
_weapon = 		_this select 1;
_ammo = 		_this select 4;
//_projectile = 	_this select 6;

//Calculate audible range of fired bullet
_nfactor = 0.7; // Noise factor, Default 1, 0 to disable zombie aggro for AI
_audible = getNumber (configFile >> "CfgAmmo" >> _ammo >> "audibleFire");
_caliber = getNumber (configFile >> "CfgAmmo" >> _ammo >> "caliber");
_distance = round(_audible * 10 * _caliber * _nfactor);
_id = [_unit,_distance,true,(getPosATL _unit)] call ai_alertzombies;

