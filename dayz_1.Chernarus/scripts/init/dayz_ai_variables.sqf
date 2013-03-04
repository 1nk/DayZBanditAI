//AI Bandit Module Variables
waituntil {!isnil "bis_fnc_init"};

spawnMultiplier = 1;			//AI spawn multiplier (Default value: 1, whole numbers only)
aiWeaponNoise = 1.0;			//Multiplier value for AI weapon noise. (Player equivalent: 1.0)
aiRespawnChance = 0.40;			//Probability of respawning an AI upon death
aiNoRifleChance = 0.50;			//Probability of not assigning any rifle to the AI if weapongrade is zero.
aiHeliCrashChance = 0.075;		//Probability of assigning a helicrash weapon to the AI (should be smaller than aiBetterWeapon)
aiBetterWeapon = 0.175;			//Probability of assigning a better weapon to the AI than the preset weapon grade.

maxAI1Rate = 5;					//Global maximum wait time before randomly-spawned AI script can be run again (minutes)
maxAI2Rate = 4;					//Global maximum wait time before building-spawned AI script can be run again (minutes)
maxAI3Rate = 5;					//Global maximum wait time before respawned AI script can be run again (minutes)
maxKSRate = 30;					//Global maximum wait time before Kill Squad AI spawn script can be run again (minutes)
maxAIUnits = 30;				//Global maximum number of spawned AI bandits (not including Kill Squad units)
minKillSquad = 1;				//Global minimum number of surviving Kill Squad units before reinforcements may be spawned in. (0 = all units must die before more can be spawned)