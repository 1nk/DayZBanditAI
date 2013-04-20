//DZAI Variables Version 0.04
private["_worldname"];


//Enable/Disable Zombies
if (!isDedicated) then { 
	DZAI_zombiesDisabled = false;							//Disable zombie spawns (0: Zombies, 1: No Zombies) 
};
if (!isServer) exitWith {};									//End of client-sided work.

//DZAI Settings
DZAI_debugLevel = 1;										//Enable or disable event logging to arma2oaserver.rpt. Debug level setting. 0: Off, 1: Basic Debug, 2: Extended Debug. (Default: 1)
DZAI_debugMarkers = 0;										//Enable or disable debug markers for AI patrol. (Default: 0)
DZAI_modName = "default";									//Possible values: "skarolingor" (DayZ Lingor Skaronator Version), "2017" (DayZ 2017). If using a non-standard version of a DayZ mod, edit this variable, other leave it as "default".

//AI Variables
DZAI_weaponNoise = 1.0;										//AI weapon noise for zombie aggro purposes. (Default: 1.0)
DZAI_numAIUnits = 0;										//DO NOT EDIT - Used to keep track of live AI units.
DZAI_maxAIUnits = 65535;									//Global maximum number of spawned AI bandits (0: Disables AI spawning)
DZAI_spawnExtra = 0;										//Number of extra AI to spawn for each trigger. (Default: 0)
DZAI_spawnRandom = 15;										//Number of randomly-placed AI to spawn on server start. These AI are randomly placed on the map in the same way as Heli Crashes. (Default: 15)
DZAI_spawnRandomDelay = 60;									//Time to wait between each AI spawn at server start (seconds). (Default: 60)
DZAI_respawnTime1 = 120;									//Minimum wait time for AI respawn timer (seconds). (Default: 120)
DZAI_respawnTime2 = 180;									//Maximum additional wait time for AI respawn timer (seconds). Total Respawn Time = DZAI_respawnTime1 + random(DZAI_respawnTime2) (Default: 180)

//AI Loadout Configuration									(Edible and Medical items, Miscellaneous items, Skin packs)
DZAI_invmedicals = 1; 										//Number of selections of medical items (Inventory)
DZAI_ninmedicals = 1;										//Maximum amount of each medical item, minimum of zero (Inventory)
DZAI_invedibles = 1;										//Number of selections of edible items (Inventory)
DZAI_ninedibles = 1;										//Maximum amount of each edible item, minimum of zero (Inventory)
DZAI_bpmedicals = 2; 										//Number of selections of medical items (Backpack)
DZAI_nbpmedicals = 1;										//Maximum amount of each medical item, minimum of zero (Backpack)
DZAI_bpedibles = 1;											//Number of selections of edible items (Backpack)
DZAI_nbpedibles = 1;										//Maximum amount of each edible item, minimum of zero (Backpack)
DZAI_numMiscItemS = 3;										//Maximum number of items to select from DZAI_DefaultMiscItemS table.
DZAI_numMiscItemL = 1;										//Maximum number of items to select from DZAI_DefaultMiscItemL table.
DZAI_chanceMiscItemS = 0.50;								//Chance to add random item from DZAI_DefaultMiscItemS table
DZAI_chanceMiscItemL = 0.25;								//Chance to add random item from DZAI_DefaultMiscItemL table
DZAI_skinItemChance = 0.08;									//Chance to add random item from DZAI_DefaultSkinLoot table.
DZAI_maxPistolMags = 1;										//Maximum number of pistol magazines to generate (Note: AI may loot additional magazines from dead bodies or loot piles they find)
DZAI_maxRifleMags = 2;										//Maximum number of rifle  magazines to generate (Note: AI may loot additional magazines from dead bodies or loot piles they find)
DZAI_weaponGrades = [0,1,2,3];								//All possible weapon grades. A "weapon grade" is a 4-tiered classification of gear. 0: Residential, 1: Military, 2: MilitarySpecial, 3: Heli Crash. (MUST change DZAI_weaponGrades and DZAI_gradeChances together to avoid issues!)
DZAI_gradeChances = [0.25,0.50,0.20,0.05]; 					//Probabilities for generating each weapon grade. (Values should add up to 1.00)
DZAI_toolChances = [1.00,0.90,0.85,0.80,0.65,0.60,0.25,0.25,0.10,0.05,0.03,0.03]; 	//Probabilities for generating each tool item. (Flashlight, Watch, Knife, Hatchet, Compass, Map, Toolbox, Matchbox (or Flint for DayZ2017), Military Flashlight, Rangefinder, GPS, NV Goggles.
DZAI_betterBackPack = 0.90;									//Chance of assigning a better backpack than the default one. (Default: 0.90)

/*Default AI Loot Tables. EDIT WITH CARE - these tables affect ALL DayZ mods globally. 
To make changes for a specific DayZ mod, edit the appropriate config file in configs folder. 
Rule of thumb: If it doesn't belong in the original DayZ mod, it doesn't belong here. Edit the mod-specific config file instead.
*/
DZAI_BanditTypesDefault = ["Survivor2_DZ", "SurvivorW2_DZ", "Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"]; //List of skins for AI units to use
DZAI_PistolsDefault0 = ["Colt1911", "revolver_EP1", "Makarov"]; //Common pistols that can be found in areas such as Apartments and Farms.
DZAI_PistolsDefault1 = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD", "revolver_EP1"]; //DZAI_PistolsDefault1-3: Uncommon/rare pistols that can be found in Military areas (ie: Firestations, Deer Stands, Barracks)
DZAI_PistolsDefault2 = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD"]; //+["MakarovSD"]; For DayZ 1.7.7. 
DZAI_PistolsDefault3 = ["M9", "glock17_EP1", "UZI_EP1", "M9SD"]; //+["MakarovSD"]; For DayZ 1.7.7 
/*
DZAI_RiflesDefault0 = Rifles found in Residential areas. (ie: Apartments, Farms)
DZAI_RiflesDefault1 = Rifles found in Military areas. (ie: Firestations, Deer Stands)
DZAI_RiflesDefault2 = Rifles found in MilitarySpecial areas. (ie: Barracks)
DZAI_RiflesDefault3 = Rifles found in HeliCrash areas.
*/
DZAI_RiflesDefault0 = ["Winchester1866", "LeeEnfield", "huntingrifle","M1014","MR43"];
DZAI_RiflesDefault1 = ["M16A2","M16A2GL","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","M1014","DMR","M4A1","M14_EP1","Remington870_lamp","MP5A5","MP5SD","M4A3_CCO_EP1","Sa58P_EP1","Sa58V_EP1","BAF_L85A2_RIS_Holo"];
DZAI_RiflesDefault2 = ["M16A2","M16A2GL","M249_DZ","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","SVD_CAMO","M1014","M107_DZ","DMR","M4A1","M14_EP1","Remington870_lamp","M240_DZ","M4A1_AIM_SD_camo","M16A4_ACG","M4A1_HWS_GL_camo","Mk_48_DZ","M4A3_CCO_EP1"];
DZAI_RiflesDefault3 = ["FN_FAL","bizon_silenced","M14_EP1","FN_FAL_ANPVS4","M107_DZ","BAF_AS50_scoped","Mk_48_DZ","M249_DZ","DMR","G36C","G36C_camo","G36A_camo","G36K_camo","BAF_L85A2_RIS_SUSAT"]; //+ ["RPK_74"]; For DayZ 1.7.7
DZAI_DefaultStartPack = "DZ_Patrol_Pack_EP1"; //Class name of default starting backpack
DZAI_DefaultBackpacks = ["CZ_VestPouch_EP1","DZ_Patrol_Pack_EP1", "DZ_Assault_Pack_EP1", "DZ_CivilBackpack_EP1", "DZ_ALICE_Pack_EP1", "DZ_Backpack_EP1", "DZ_British_ACU", "DZ_TK_Assault_Pack_EP1"]; //List of all available backpacks
DZAI_DefaultEdibles = ["ItemSodaCoke", "ItemSodaPepsi", "ItemWaterbottle", "FoodCanSardines", "FoodCanBakedBeans", "FoodCanFrankBeans", "FoodCanPasta", "ItemWaterbottleUnfilled","ItemWaterbottleBoiled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw","FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"]; //List of all edible items
DZAI_DefaultMedicals1 = ["ItemBandage", "ItemBandage", "ItemPainkiller"]; //List of common medical items
DZAI_DefaultMedicals2 = ["ItemPainkiller", "ItemMorphine", "ItemBandage", "ItemBloodbag", "ItemAntibiotic","ItemEpinephrine"]; //List of all medical items
DZAI_DefaultMiscItemS = ["ItemTankTrap", "ItemSandbag", "ItemWire", "ItemHeatpack", "HandRoadFlare", "HandChemBlue", "HandChemRed", "HandChemGreen","SmokeShell","SmokeShellGreen","SmokeShellGreen","PipeBomb","HandGrenade_West","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","1Rnd_Smoke_M203","HandGrenade_West","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","1Rnd_Smoke_M203"]; //List of random miscellaneous items (1 inventory space)
DZAI_DefaultMiscItemL = ["ItemTent", "ItemJerrycan", "PartWheel", "PartEngine", "PartFueltank", "PartGlass", "PartVRotor","PartWoodPile"]; //List of random miscellaneous items (>1 inventory space)
DZAI_DefaultSkinLoot = ["Skin_Camo1_DZ", "Skin_Sniper1_DZ"]; //List of all skin packs
DZAI_DefaultTools = ["ItemFlashlight","ItemWatch","ItemKnife","ItemHatchet","ItemCompass","ItemMap","ItemToolbox","ItemMatchbox","ItemFlashlightRed","binocular_vector","ItemGPS","NVGoggles"]; //List of all tools and gadgets. NOTE: Every entry into the DZAI_DefaultTools table must have corresponding chance added to DZAI_toolChances!

//Load mod-specific configuration file. Config files contain trigger information, addition and removal of items/skins, and/or other variable customizations.
_worldname=format["%1",worldName];

switch (_worldname) do {
	case "chernarus":
	{
		#include "configs\chernarus_config.sqf"
	};
	case "utes":
	{
		#include "configs\utes_config.sqf"
	};
	case "zargabad":
	{
		#include "configs\zargabad_config.sqf"
	};
	case "fallujah":
	{
		#include "configs\fallujah_config.sqf"
	};
	case "takistan":
	{
		#include "configs\takistan_config.sqf"
	};
    case "tavi":
    {
		#include "configs\tavi_config.sqf"
    };
	 case "lingor":
    {
		#include "configs\lingor_config.sqf"
    };
    case "namalsk":
    {
		#include "configs\namalsk_config.sqf"
    };
    case "mbg_celle2":
    {
		#include "configs\mbg_celle2_config.sqf"
    };
	case "oring":
    {
		#include "configs\oring_config.sqf"
    };
	case "panthera2":
    {
		#include "configs\panthera2_config.sqf"
    };
};
