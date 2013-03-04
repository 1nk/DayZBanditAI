private["_unit","_ammo","_audible","_distance"];
//[unit, weapon, muzzle, mode, ammo, magazine]
_unit = 		_this select 0;
_ammo = 		_this select 4;

//Calculate audible range of fired bullet
_audible = getNumber (configFile >> "CfgAmmo" >> _ammo >> "audibleFire");
_caliber = getNumber (configFile >> "CfgAmmo" >> _ammo >> "caliber");
_distance = round(_audible * 10 * _caliber * aiWeaponNoise);
_id = [_unit,_distance,true,(getPosATL _unit)] call ai_alertzombies;

