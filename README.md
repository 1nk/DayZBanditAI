DZAI - DayZ AI Addon (Current version: 0.02)
============


This new package is MP-compatible and works out of the box for any supported DayZ map. Currently supported DayZ maps:
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

Changelog:
April 3, 2013 - 0.02 Update:
- Modified patrol script to include variances in AI behavior and speed settings.
- Enabled variable logging for several script files. To enable event logging, modify DZAI_debug or DZAI_extdebug variables in \DZAI\init\dayz_ai_variables.sqf.
- Reduced number of input parameters for AI spawn scripts
- Reduced maximum spawn distance for random-location AI spawn script from 400m to 350m. (note: random spawns have not yet been added)
- Reduced maximum spawn distance for building-location AI spawn script from 450m to 400m.
- Slight increases in minimum amingAccuracy, aimingShake, aimingSpeed for AI.
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
- Added Colt1911 to second-tier pistol weapon array.
- Reduced rate of generating Morphine Autoinjector for AI.
- Reduced maximum distance between waypoints for AI patrol from 100m to 90m (building-spawn AI only). This is to keep them from wandering too far away from the towns they are generated from.

March 25, 2013 - 0.01 Release:
- Complete revision of previous AI package to ensure multiplayer compatibility.

Installation Instructions:
- Extract your mission .pbo file.
- Copy the entire DZAI folder into the extracted mission folder.
- Edit your init.sqf with a text editor.
- Add the line to your init.sqf file: 

<code>call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_initialize.sqf";				//Load DayZ AI Bandit Module</code>

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

Detailed documentation for the DZAI package is coming.

