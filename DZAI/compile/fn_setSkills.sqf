/*
	Usage: [_unit] call fnc_setSkills;
*/

_unit = _this select 0;
	
_unit setSkill ["aimingAccuracy",(0.13 + random 0.20)];
_unit setSkill ["aimingShake",(0.30 + random 0.40)];
_unit setSkill ["aimingSpeed",(0.30 + random 0.40)];
_unit setSkill ["endurance",(0.70 + random 0.30)];
_unit setSkill ["spotDistance",(0.40 + random 0.35)];
_unit setSkill ["spotTime",(0.50 + random 0.30)];
_unit setSkill ["courage",(0.50 + random 0.25)];
_unit setSkill ["reloadSpeed",(0.50 + random 0.25)];
_unit setSkill ["commanding",(0.50 + random 0.25)];
_unit setSkill ["general",(0.50 + random 0.25)];

