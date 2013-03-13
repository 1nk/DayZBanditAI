DayZBanditAI
============

March 13, 2013 Update: The DayZ AI Bandit Module is being reworked to improve MP compatibility and flexibility. Since I'm only able to devote less than an hour to work on this package, the next release will take a while.

The DayZ AI Bandit Module is a personal project built from a heavily stripped-down version DaiZy (DayZ SP), intended to simulate multiplayer gameplay in a singleplayer environment using AI Bandits to simulate the threat of hostile human players. 

The AI Bandit Module may be used in a multiplayer environment, but unpredictable events may occur due to variable locality issues. The AI Bandit Module is intended for use with Reality DayZ, Lite DayZ, or any other private hive server files in a lone player environment, but 
*may* also be compatible with DaiZy (Single Player DayZ) with appropriate modifications. 

The AI Bandit Module may be ported into any DayZ map with quick changes to loot data and AI spawn points.


DayZ Versions Supported:
------------------------------------
DayZ (Base): 1.7.6.1 (Up to date as of March 2, 2013)

* Note: The AI Bandit Module can be adapted to "non-supported" maps. For more information, see section "Modifying AI Bandit Module for New Maps" below.

Features of the DayZ AI Bandit Module:
---------------------------------------
* Varied, randomly-generated bandit loadouts
* Bandit equipment is balanced according to the location in which they are generated (ie: bandits in high-risk areas such as military bases and large cities tend to be better armed)
* Varied locations of bandit spawns: cities, towns, castles, and even in the middle of the wilderness.
* Bandits tend to spawn and patrol near valuable buildings (ie: Barracks, Firestations, Supermarkets).
* Bandits respond to zombies and engage zombies on sight.
* Zombies detect bandit gunfire and seek out its source (AI gunfire is currently set at the same level of player's).
* Number and rate of AI bandit spawns have an upper limit to prevent an overload of AI spawns.
* Scripts are easily adaptable to any future DayZ versions and maps.
* Bandit equipment and loot is easily configurable. 
* AI bandit weapon loadout is categorized based on type of loot spawn (ie: Residential, Military, Heli Crash, etc.)
* Long-lasting single player fun - you will die many, many times.
* Continually balanced for fair and fun gameplay - killing a single bandit will not immediately yield full endgame gear, but maybe enough supplies to help you on your next encounter with an AI bandit.
* New "Kill Squad" AI type - A deadly and well-equipped patrolling military team that works together to exterminate players, AI bandits, and zombies (In testing and not added by default except to Utes airfield).
* Bandits have a chance of respawning randomly around the player after they are killed (Further testing is required).

How It Works:
---------------------------------------

Descriptions of Script Files:
---------------------------------------

Modifying AI Bandit Module for New Maps:
---------------------------------------
The essential files that need to be changed in your mission folder: 
* mission.sqm, ini.sqf
* \scripts\mission\fnc: all spawnBandits_(name).sqf files
* \scripts\compile: fn_unitBackpackTools.sqf, fn_unitConsumables.sqf, fn_unitSelectPistol.sqf, fn_unitSelectRifle.sqf

ini.sqf:

The following lines need to be inserted directly before "progressLoadingScreen 1.0;":

<code>
//Load AI Bandit Module
if (!isDedicated) then {  
call compile preprocessFileLineNumbers "scripts\init\dayz_ai_variables.sqf";  
call compile preprocessFileLineNumbers "scripts\init\dayz_ai_functions.sqf";  
call compile preprocessFileLineNumbers "scripts\mission\mission_functions.sqf";  
zombie_generate = compile preprocessFileLineNumbers "scripts\compile\zombie_generate.sqf";  
};  
killSquadHQ = createCenter resistance;  
killSquadGrp = createGroup resistance;  
resistance setFriend [east, 0];  
resistance setFriend [west, 0];  
EAST setFriend [WEST, 0];  
WEST setFriend [EAST, 0];</code>

mission.sqm:

Use the Single Player Editor to insert triggers to activate bandit spawns. You may need to temporarily remove dayz_code.pbo from your @(mod name) folder to access the Single Player menu.  
Example trigger entry:

<code>
class Sensors {  
	class Item0  
		{  
			position[]={4718.1274,17.973492,2601.1614};  
			a=200;  
			b=200;  
			activationBy="ANY";  
			repeating=1;  
			timeoutMin=30;  
			timeoutMid=60;  
			timeoutMax=120;  
			interruptable=1;  
			age="UNKNOWN";  
			text="Balota AF HVB";  
			expCond="(vehicle player in thislist) OR (player in thislist)";  
			expActiv="_nul = [1,2,50,300,1,1] call fnc_spawnBandits_bldgs;";  
			class Effects  
			{  
			};  
		};  
};  
</code>

Explanation:
* position: coordinates where the trigger is located
* a, b: dimensions of the (circular) trigger
* activationBy: anyone can activate the trigger (AI units do not seem to be able to activate triggers themselves)
* timeoutMin/Mid/Max: the minimum, average, and maximum amount of time that the player must remain within the trigger area to trigger the spawn script to activate. Nothing happens if the player leaves before the countdown ends.
* text: A basic description of where the trigger is located, to help with future editing.
* expCond: trigger will activate whether the player is in a vehicle or on foot
* expActiv: the script that activates when the timeout is finished. Possible scripts: fnc_spawnBandits_bldgs or fnc_spawnBandits_random
* fnc_spawnBandits_bldgs: to be used when there are buildings within the trigger area and you want the bandit to spawn near them
* fnc_spawnBandits_random: uses the player's position as a reference point for spawning bandits
* Further explanation of the parameters used by each spawnBandits script is explained in detail inside the comments area

Limitations of the DayZ AI Bandit Module:
-----------------------------------------
* Hand-coded by a novice scripter in Notepad++, tested by trial-and-error (there may be many errors or instances of less-than-perfect coding).
* Possibly inefficient coding methods
* No BE exceptions provided - it is assumed that the server will run with BattlEye disabled.
* AI Bandit Module may exhibit unintended behavior when more than 1 player is present. Therefore, it is not recommended for use in a publicly-accessible private hive.
* AI bandits tend to give away their positions by firing at *all* zombies in sight (they cannot decide to hold fire until necessary)
* Zombies can only detect AI bandit from their gunfire. They cannot detect AI bandits through sight or sound.
* Zombies cannot attack or damage AI bandits, but will chase and follow them.
* Zombie corpses tend to build up in large cities as AI bandits continuously hunt them down, causing noticeable lag if left to hunt zombies.
* AI bandits tend to "forget" about the player after their initial encounter, and do not chase the player. (Recommendation: use additional AI-enhancing scripts)
* AI bandits do not use vehicles (yet)
* AI bandits have no sense of self-preservation, and do not run when surrounded by zombies. Sometimes a bandit may engage a distant zombie while ignoring the ones beside itself.
* Cannot fully replicate the experience of online gameplay with human players. In the best case scenario, it may provide the experience of a low population server.

Future Goals of the DayZ AI Bandit Module:
-----------------------------------------
* Presently, only the AI bandit's weapon loadout is balanced according to their spawn location. Future versions will include backpack and tool loadout balancing. ie: A "newbie" AI bandit with a Lee Enfield and Makarov would not have any chance of carrying a GPS and NV Goggles and lugging around a Coyote Backpack.
* Import armed helicopter patrols from the Escape Chernarus co-op mission
* Multiplayer compatibility, improved setup/configuration ease and flexibility