DZAI - DayZ AI Addon (Current version: 0.02)
============
April 3, 2013 Update: DZAI updated to version 0.02

March 25, 2013 Update: Revision 1 of AI package (now named DZAI for DayZ AI) has been uploaded. 

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

