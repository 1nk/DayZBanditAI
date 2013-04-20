DZAI - DayZ AI Addon (Current version: 0.04)
============


This new package is MP-compatible and works out of the box with any supported DayZ mission file. Currently supported DayZ missions:
- Chernarus (Original DayZ Mod only)
- Fallujah
- Isla Duala
- Lingor
- Celle
- Namalsk
- Oring
- Panthera
- Takistan
- Taviana (Requires testing)
- Utes
- Zargabad
- <b>Note</b>: DZAI version 0.03+ should work with any DayZ mission file. However for DayZ mods not listed above, no AI units will spawn from buildings and default DayZ loot tables will be used to generate AI loadouts. You will have to create and add your own configuration file to create new spawn points.

DZAI Features:
- List of features here.

April 20, 2013 - 0.04 Update:

- [NEW] Namalsk: Added modified weapongrade chances for Namalsk. Military and MilitarySpecial weapons are slightly more common, while Residential-type weapons are slightly less common.
- [NEW] Namalsk: Added several Namalsk-specific items to Namalsk tool tables: BrokenGPS, BrokenRadio, BrokenNVGoggles, ItemSolder, APSI.
- [NEW] DZAI can now support multiple DayZ mods that use the same map. Currently supported alternate mods: Skaronator Lingor, DayZ 2017.
- [FIXED] Fixed script responsible for updating current number of live AI units. Previously, killing an AI unit did not decrease the current live AI unit count, causing AI to stop spawning/respawning if the limit is reached.
- [FIXED] AI units are now also hostile to zombies spawned in the wilderness.
- [FIXED] Namalsk: Fixed several spawn triggers for Namalsk.
- [FIXED] Namalsk: DZAI now reads from Namalsk-specific loot tables for generating zombie loot.
- [FIXED] Taviana: Removed several weapons that were added in DayZ 1.7.6.1 that are not present in Taviana 2.0, which caused client crashes when looting AI bodies.
- [MODIFIED] AI units now spawn only with a primary weapon, ammunition, backpack, and possibly binoculars.
- [MODIFIED] AI units will have additional gear added to their inventory (sidearm, skin, tools, gadget, etc.) when they are killed by a player. An AI unit killed by another AI will not have additional gear added.
- [MODIFIED] Slight increases in AI spawns for Cherno, Elektro, and Zelenogorsk.
- [MODIFIED] Random AI spawn radius increased from 4000 meters to 4500 meters.
- [MODIFIED] Weapongrade is no longer used to influence consumable/tool item generation (for fnc_unitConsumables, fnc_unitTools).
- [MODIFIED] Slight increases in maximum aimingShake/aimingSpeed parameters for AI.
- [MODIFIED] Miscellaneous items recategorized into Small (1 inventory space) and Large (>1 inventory space) items. An AI may carry up to 3 Small items and 1 Large item. Note: If AI unit's backpack is full, extra items may appear on the ground nearby.
- [MODIFIED] Pistol ammunition is again added to AI unit's inventory instead of backpack, since the pistol is now added to the AI after death.
- [MODIFIED] Lingor config file now supports both Lingor 1.3 and Skaronator Lingor 2.1. To enable Skaronator Lingor support, edit "DZAI_modName" in dayz_ai_variables.sqf to "skarolingor".
- [MODIFIED] Chernarus config file now supports both original DayZ and DayZ 2017. To enable DayZ 2017 support, edit "DZAI_modName" in dayz_ai_variables.sqf to "2017".
- [MODIFIED] Namalsk: Lowered number of selections and number of edible items in AI backpack to zero, as food is intended to be rare on Namalsk.
- [MODIFIED] Namalsk: Lowered chance of generating functional GPS and NVGoggles from 3% to 1%.
- [MODIFIED] Namalsk: Labeled spawn triggers with names of their locations for easier editing. Note: Spawn triggers for other maps will be also labeled in the near future.
- [MODIFIED] Taviana: Adjusted spawn numbers for nearly all triggers. Larger cities/towns will have more AI spawned, while less dense areas will have less AI. Several small AI spawns were also added.
- [MODIFIED] DZAI debugging settings now grouped into a single variable (DZAI_debug). Possible settings: 0 (no debug logging), 1 (basic debug logging), 2 (extended debug logging).
- [MODIFIED] Tool items (ie: Map, Compass, etc) are now generated individually on a probability basis instead of being generated as a set. Gadgets such as NVGoggles and GPS are now also categorized as tools.
- [MODIFIED] Improved documentation in several script files.
- [MODIFIED] Removed fnc_unitBackpackTools function, split into fnc_unitBackpack and fnc_unitTools functions.

- [REMOVED] Removed unnecessary fnc_selectRandomGrade function. Weapongrades are now generated directly using the fnc_selectRandomWeighted function instead.

Installation Instructions:
- Extract your mission .pbo file. (I recommend cpbo, which can be downloaded as part of the Arma Tools package: http://www.armaholic.com/page.php?id=411)
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

- Optional: Edit dayz_ai_variables.sqf in "DZAI\init" to customize the addon settings (ie: Enable/Disable zombies, AI loadouts, AI spawns, etc.)
- Repack your mission.pbo file.
- You are now ready to start your server.

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
- You are now ready to start your server.

Detailed documentation for the DZAI package is coming. Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ and I will help if I am able.