DayZBanditAI
============

The DayZ AI Bandit Module is a personal project built from a heavily stripped-down version DaiZy (DayZ SP), intended to simulate multiplayer gameplay in a singleplayer environment using AI Bandits to simulate the threat of hostile human players. 

The AI Bandit Module may be used in a multiplayer environment, but unpredictible events may occur due to variable locality issues. The AI Bandit Module is intended for use with Reality DayZ private hive server files in a lone player environment, but 
*may* also be compatible with DaiZy (Single Player DayZ) with appropriate modifications. 

The AI Bandit Module may be ported into any DayZ map with quick changes to loot data and AI spawn points.


DayZ Versions Supported:
------------------------------------
DayZ (Base): 1.7.5.1 (Current version)

DayZ Namalsk: 0.7.3 (0.7.4 compatibility coming soon)

DayZ Lingor: 1.2 (Out of date)

DayZ Isla Duala: 1.1 (Out of date)

DayZ Taviana: 2.0/1.5.0 (Out of date)

Features of the DayZ AI Bandit Module:
---------------------------------------
* Varied, randomly-generated bandit loadouts
* Bandit equipment is balanced according to the location in which they are generated (ie: bandits in high-risk areas such as military bases and large cities tend to be better armed)
* Varied locations of bandit spawns: cities, towns, castles, and even in the middle of the wilderness.
* Bandits tend to spawn and patrol near valuable buildings (ie: Barracks, Firestations, Supermarkets).
* Bandits respond to zombies and engage zombies on sight.
* Zombies detect bandit gunfire and seek out its source (AI gunfire is approximately 40% the level of player's).
* Number and rate of AI bandit spawns have an upper limit to prevent an overload of AI spawns.
* Easily adaptable to any future DayZ versions and maps.
* Bandit equipment and loot is easily configurable. 
* AI bandit weapon loadout is categorized based on type of loot spawn (ie: Residential, Military, Heli Crash, etc.)
* Long-lasting single player fun - you will die many, many times.
* Continually balanced for fair and fun gameplay - killing a single bandit will not immediately yield full endgame gear, but maybe enough supplies to help you on your next encounter with an AI bandit.

Limitations of the DayZ AI Bandit Module:
-----------------------------------------
* Hand-coded by a novice scripter in Notepad++, tested by trial-and-error (there are many errors).
* Inefficient coding methods (most variables used are local variables)
* No BE exceptions provided - it is assumed that the server will run with BattlEye disabled.
* AI Bandit Module may exhibit unintended behavior when more than 1 player is present. Therefore, it is not recommended for use in a publicly-accessible private hive.
* AI bandits tend to give away their positions by firing at *all* zombies in sight (they cannot decide to hold fire until necessary)
* Zombies can only detect AI bandit gunfire. They cannot detect AI bandits through sight or sound.
* Zombies cannot attack or damage AI bandits, but will chase and follow them.
* Zombie corpses tend to build up in large cities as AI bandits continuously hunt them down, causing noticeably lag if left to hunt zombies.
* AI bandits tend to "forget" about the player after their initial encounter, and do not chase the player.
* AI bandits do not work together
* AI bandits do not use vehicles
* AI bandits have no sense of self-preservation, and do not run when surrounded by zombies
* Cannot fully replicate the experience of online gameplay with human players.

Future Goals of the DayZ AI Bandit Module:
-----------------------------------------