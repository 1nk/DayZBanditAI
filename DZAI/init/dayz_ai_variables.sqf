//DZAI Variables Version 0.02
private["_worldname"];


//Enable/Disable Zombies
if (!isDedicated) then { 
	DZAI_zombiesDisabled = false;	//Disable zombie spawns (0: Zombies, 1: No Zombies) 
};
if (!isServer) exitWith {};			//End of client-sided work.

//Event Logging
DZAI_debug = true;					//Enable or disable event logging to arma2oaserver.rpt
DZAI_extdebug = false;				//Enable or disable extended event logging to arma2oaserver.rpt

//AI Variables
DZAI_spawnExtra = 0;				//Number of extra AI to spawn for each trigger.
DZAI_weaponNoise = 1.0;				//Multiplier value for AI weapon noise. (Player equivalent: 1.0)
DZAI_noRifleChance = 0.00;			//Chance of not assigning any rifle to the AI if weapongrade is zero.
DZAI_betterBackPack = 0.90;			//Chance of assigning a better backpack than the default one.

//AI Spawn Limits
DZAI_maxAIUnits = 65535;			//Global maximum number of spawned AI bandits (0: Disables AI spawning)

//AI Respawn Timing
DZAI_respawnTime1 = 90;				//Minimum wait time for AI respawn timer (seconds).
DZAI_respawnTime2 = 150;			//Maximum additional wait time for AI respawn timer (seconds). Total Respawn Time = DZAI_respawnTime1 + random(DZAI_respawnTime2)

//AI Loot Generation Configuration	(Edible and Medical items, Miscellaneous items, Skin packs)
DZAI_invmedicals = 1; 				//Number of selections of medical items (Inventory)
DZAI_ninmedicals = 1;				//Maximum amount of each medical item, minimum of zero (Inventory)
DZAI_invedibles = 1;				//Number of selections of edible items (Inventory)
DZAI_ninedibles = 1;				//Maximum amount of each edible item, minimum of zero (Inventory)
DZAI_bpmedicals = 2; 				//Number of selections of medical items (Backpack)
DZAI_nbpmedicals = 1;				//Maximum amount of each medical item, minimum of zero (Backpack)
DZAI_bpedibles = 1;					//Number of selections of edible items (Backpack)
DZAI_nbpedibles = 1;				//Maximum amount of each edible item, minimum of zero (Backpack)
DZAI_miscItemChance = 0.6;			//Chance to add random item from DZAI_DefaultMiscs table.
DZAI_skinItemChance = 0.085;		//Chance to add random item from DZAI_DefaultSkinLoot table.
DZAI_maxPistolMags = 1;				//Maximum number of pistol magazines to generate (Note: AI may loot additional magazines from dead bodies they find)
DZAI_maxRifleMags = 2;				//Maximum number of rifle  magazines to generate (Note: AI may loot additional magazines from dead bodies they find)
DZAI_weaponGrades = [0,1,2,3];		//(DO NOT CHANGE) All possible weapon grades (Generally, 0: Residential, 1: Military, 2: MilitarySpecial, 3: Heli Crash)
DZAI_gradeChances = [0.17,0.60,0.25,0.08]; //Probabilities for generating weapon grades (0 - 3).

//Default Bandit Loot Tables (Edit with caution - these tables are shared between ALL DayZ mods. To make changes for a specific DayZ map, edit the appropriate config file in configs folder)
DZAI_BanditTypesDefault = ["Survivor2_DZ", "SurvivorW2_DZ", "Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"];
DZAI_PistolsDefault0 = ["Colt1911", "revolver_EP1", "Makarov"];
DZAI_PistolsDefault1 = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD", "revolver_EP1"];
DZAI_PistolsDefault2 = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD"];
DZAI_PistolsDefault3 = ["M9", "glock17_EP1", "UZI_EP1", "M9SD"];
//DZAI_PistolsDefault4 = [];
DZAI_RiflesDefault0 = ["Winchester1866", "LeeEnfield", "huntingrifle","M1014"];
DZAI_RiflesDefault1 = ["M16A2","M16A2GL","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","M1014","DMR","M4A1","M14_EP1","Remington870_lamp","MP5A5","MP5SD","M4A3_CCO_EP1","Sa58P_EP1","Sa58V_EP1","BAF_L85A2_RIS_Holo"];
DZAI_RiflesDefault2 = ["M16A2","M16A2GL","M249_DZ","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","SVD_CAMO","M1014","M107_DZ","DMR","M4A1","M14_EP1","Remington870_lamp","M240_DZ","M4A1_AIM_SD_camo","M16A4_ACG","M4A1_HWS_GL_camo","Mk_48_DZ","M4A3_CCO_EP1"];
DZAI_RiflesDefault3 = ["FN_FAL","bizon_silenced","M14_EP1","FN_FAL_ANPVS4","M107_DZ","BAF_AS50_scoped","Mk_48_DZ","M249_DZ","DMR","G36C","G36C_camo","G36A_camo","G36K_camo","BAF_L85A2_RIS_SUSAT"];
//DZAI_RiflesDefault4	= [];
DZAI_DefaultStartPack = "DZ_Patrol_Pack_EP1";
DZAI_DefaultBackpacks = ["CZ_VestPouch_EP1","DZ_Patrol_Pack_EP1", "DZ_Assault_Pack_EP1", "DZ_CivilBackpack_EP1", "DZ_ALICE_Pack_EP1", "DZ_Backpack_EP1", "DZ_British_ACU", "DZ_TK_Assault_Pack_EP1"];
DZAI_DefaultGadgets = ["ItemGPS","NVGoggles","binocular_vector","ItemFlashlightRed"];
DZAI_DefaultEdibles = ["ItemSodaCoke", "ItemSodaPepsi", "ItemWaterbottle", "FoodCanSardines", "FoodCanBakedBeans", "FoodCanFrankBeans", "FoodCanPasta", "ItemWaterbottleUnfilled","ItemWaterbottleBoiled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw","FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"];
DZAI_DefaultMedicals1 = ["ItemBandage", "ItemPainkiller"];
DZAI_DefaultMedicals2 = ["ItemMorphine", "ItemMorphine", "ItemBandage", "ItemBloodbag", "ItemPainkiller", "ItemAntibiotic","ItemEpinephrine"]; //Note: Morphine is added to the list more than once intentionally.
DZAI_DefaultMiscs = ["ItemSandbag", "ItemTent", "ItemJerrycan", "PartWheel", "PartEngine", "PartFueltank", "ItemTankTrap", "ItemWire", "PartGlass", "PartVRotor", "ItemHeatpack", "HandRoadFlare", "HandChemBlue", "HandChemRed", "HandChemGreen","PartWoodPile","SmokeShell","SmokeShellGreen","SmokeShellGreen","PipeBomb","HandGrenade_West","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","1Rnd_Smoke_M203"];
DZAI_DefaultSkinLoot = ["Skin_Camo1_DZ", "Skin_Sniper1_DZ"];

//Map-specific variable changes
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
