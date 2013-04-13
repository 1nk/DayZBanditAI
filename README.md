DZAI - DayZ AI Addon (Current version: 0.03)
============


This new package is MP-compatible and works out of the box with any supported DayZ mission file. Currently supported DayZ missions:
- Chernarus (Base DayZ Mod only)
- Fallujah
- Isla Duala
- Lingor (Skaronator version)
- Celle
- Namalsk (Requires testing)
- Oring
- Panthera
- Takistan
- Taviana (Requires testing)
- Utes
- Zargabad
- <b>Note</b>: DZAI version 0.03 onwards should work with any DayZ mission file, even ones not listed above. However, no AI units will spawn from buildings and default DayZ loot tables will be used to generate AI loadouts.

DZAI Features:
- List of features here.


Changelog:

April 8, 2013 - 0.03 Update:
- Implemented new random AI spawn system that spawns AI in the same manner that DayZ spawns heli crashes. This feature works with any DayZ mission file that contains a "center" marker. By default, a total of 15 AI units will be spawned randomly around the map, but the number can be edited in dayz_ai_variables.sqf
- Increased all AI skill parameters, decreased minimum endurance slightly.
- AI pistol ammo is now added to backpack instead of inventory, to prevent AI from switching to sidearm and causing issues.
- Removed chance to not generate any rifle for AI.
- Lowered AI spawns for Utes due to introduction of new random AI spawn system. (Author's recommendation: try out Utes with at least 15 random AI spawns! Be sure to set a default loadout with weapons.)
- Cleaned up code for several spawn/respawn scripts (no functional changes)
- Reverted minimum delay for AI respawn to 120 seconds, maximum additional delay changed to 150 seconds. (120 seconds minimum, 270 seconds maximum).

April 3, 2013 - 0.02 Update:
- Modified patrol script to include variances in AI behavior and speed settings.
- Enabled variable logging for several script files. To enable event logging, modify DZAI_debug or DZAI_extdebug variables in \DZAI\init\dayz_ai_variables.sqf.
- Reduced number of input parameters for AI spawn scripts
- Reduced maximum spawn distance for random-location AI spawn script from 400m to 350m. (note: random spawns have not yet been added)
- Reduced maximum spawn distance for building-location AI spawn script from 450m to 400m.
- Slight increases in minimum aimingAccuracy, aimingShake, aimingSpeed for AI.
- AI loadout generation: weapongrade variable is now also used to determine whether a gadget item or skin item may be generated.
- Modified several script files to use BIS_fnc_selectRandom to select random elements from arrays instead of the previous lengthy method.
- Lumped zombie spawns and wilderness zombie spawn toggle variables into a single variable. Now all zombie spawns can be turned on or off with one setting in dayz_ai_variables.sqf.
- Modified Chenarus AI spawn triggers from default settings. There is now some variance in the number of AI spawned per trigger depending on the location.
- AI spawn trigger locations have been slightly adjusted for several maps.
- Removed AI spawn multiplier variable (DZAI_spawnMultiplier) and replaced with a variable (DZAI_spawnExtra) to add a specific number of AI to each trigger. For example, if you want 1 additional AI to spawn for every trigger, set DZAI_spawnExtra to 1 in dayz_ai_variables.sqf.
- Reduced default probability of AI spawning without a rifle (if weapongrade = 0) to 0.00. This probability may be changed in dayz_ai_variables.sqf.
- Reduced minimum spawn delay and minimum additional spawn delay by 30 seconds each. (Maximum potential spawn delay reduced from 300 seconds to 240 seconds, minimum potential spawn delay reduced from 120 seconds to 90 seconds).
- Reduced maximum types of inventory medical items generated for AI from 2 to 1.
- Increased chance of generating a random misc item (ie: vehicle parts) from 50% to 60%.
- Added Colt1911 to third-tier pistol weapon array.
- Reduced rate of generating Morphine Autoinjector for AI.
- Reduced maximum distance between waypoints for AI patrol from 100m to 90m (building-spawn AI only). This is to keep them from wandering too far away from the towns they are generated from.

March 25, 2013 - 0.01 Release:
- Complete revision of previous AI package to ensure multiplayer compatibility.

Installation Instructions:
- Extract your mission .pbo file.
- Copy the entire DZAI folder into the extracted mission folder.
- Edit your init.sqf with a text editor.
- Add the line to your init.sqf file after DayZ's compiled functions: 

<code>call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_initialize.sqf";				//Load DayZ AI Bandit Module</code>

Example edit:

<code>//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
progressLoadingScreen 0.6;
call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_initialize.sqf";				//Load DayZ AI Bandit Module
progressLoadingScreen 1.0;</code>

- Optional: Edit dayz_ai_variables.sqf in "DZAI\init" to customize the addon settings (ie: Enable/Disable zombies, AI loadouts, AI spawns)
- Repack your mission.pbo file.

Update Instructions:
- Extract your mission .pbo file.
- Back up your dayz_ai_variables.sqf file in "DZAI\init" to a safe location if you wish to keep your current settings
- Open your extracted mission folder.
- Copy the newer DZAI folder into your extracted mission folder and overwrite everything.
- If you have not modified your dayz_variables.sqf file or don't want to retain your old settings, you may repack your mission .pbo file immediately and stop following these instructions.
- If you have backed up your dayz_ai_variables.sqf file earlier, compare the previous and updated versions, and check if any new variables have been introduced. Note: Variable tweaks may occur after each update, so you may wish to keep them up-to-date.
- If new variables have been introduced, copy them over to your customized dayz_ai_variables.sqf.
- Overwrite the "new" dayz_ai_variables.sqf with your customized file if you want to re-use your previous settings.
- Repack your mission.pbo file.

Detailed documentation for the DZAI package is coming. Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ or open a thread on the forums.