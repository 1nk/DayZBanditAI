/*
	Usage: [_unit] call fnc_setSkills;
*/

_unit = _this select 0;
	
_unit setSkill ["aimingAccuracy",(0.20 + random 0.30)];
_unit setSkill ["aimingShake",(0.30 + random 0.50)];
_unit setSkill ["aimingSpeed",(0.50 + random 0.40)];
_unit setSkill ["endurance",(0.70 + random 0.50)];
_unit setSkill ["spotDistance",(0.50 + random 0.30)];
_unit setSkill ["spotTime",(0.60 + random 0.20)];
_unit setSkill ["courage",(0.70 + random 0.20)];
_unit setSkill ["reloadSpeed",(0.70 + random 0.20)];
_unit setSkill ["commanding",(0.70 + random 0.20)];
_unit setSkill ["general",(0.60 + random 0.20)];

