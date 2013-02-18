/*
	Usage: [_unit] call fnc_genericLoot;
*/
	private ["_unit","_edibles","_medicals1","_medicals2","_misc","_miscs","_rndm3","_i","_bpmedicals","_bpedibles","_numedicals","_nbpedibles","_invmedicals","_invedibles","_ninmedicals","_ninedibles"];
	_unit = _this select 0;

	_edibles = ["ItemSodaCoke", "ItemSodaPepsi", "ItemWaterbottle", "FoodCanSardines", "FoodCanBakedBeans", "FoodCanFrankBeans", "FoodCanPasta", "ItemWaterbottleUnfilled","ItemWaterbottleBoiled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw"];
	_medicals1 = ["ItemBandage", "ItemPainkiller"]; //Common Medical Items
	_medicals2 = ["ItemMorphine", "ItemBandage", "ItemBloodbag", "ItemPainkiller", "ItemAntibiotic","ItemEpinephrine"]; //All Medical Items
	_miscs = ["ItemSandbag", "ItemTent", "ItemJerrycan", "PartWheel", "PartEngine", "PartFueltank", "ItemTankTrap", "ItemWire", "PartGlass", "PartVRotor", "TrapBear", "Skin_Camo1_DZ", "Skin_Sniper1_DZ", "ItemHeatpack", "HandRoadFlare", "HandChemBlue", "HandChemRed", "HandChemGreen","PartWoodPile","SmokeShell","SmokeShellGreen","SmokeShellGreen","PipeBomb","HandGrenade_West","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","1Rnd_Smoke_M203"];
	
	_invmedicals = 1; 	//Number of selections of medical items (Inventory)
	_ninmedicals = 1;	//Maximum amount of each medical item, minimum of zero (Inventory)
	
	_invedibles = 2;	//Number of selections of edible items (Inventory)
	_ninedibles = 1;	//Maximum amount of each edible item, minimum of zero (Inventory)
	
	_bpmedicals = 2; 	//Number of selections of medical items (Backpack)
	_nbpmedicals = 2;	//Maximum amount of each medical item, minimum of zero (Backpack)
	
	_bpedibles = 3;		//Number of selections of edible items (Backpack)
	_nbpedibles = 2;	//Maximum amount of each edible item, minimum of zero (Backpack)

	//Add one guaranteed Bandage and Painkiller to inventory
	_unit addMagazine "ItemBandage";
	_unit addMagazine "ItemPainkiller";
	
	//Miscellaneous Item to backpack
	(unitBackpack _unit) addMagazineCargo [_miscs select (floor random (count _miscs)),1];
	
	//Backpack Medicals
	for [{_i=0},{_i<_bpmedicals},{_i=_i+1}] do {
		(unitBackpack _unit) addMagazineCargo [_medicals2 select (floor random (count _medicals2)), floor random (_nbpmedicals + 1)];
	};

	//Backpack Edibles
	for [{_i=0},{_i<_bpedibles},{_i=_i+1}] do {
		(unitBackpack _unit) addMagazineCargo [_edibles select (floor random (count _edibles)), floor random (_nbpedibles + 1)];
	};
	
	//Inventory Medicals
	for [{_i=0},{_i<_invmedicals},{_i=_i+1}] do {
		_unit addMagazine [_medicals1 select (floor random (count _medicals1)), floor random (_ninmedicals + 1)];
	};
	
	//Inventory Edibles
	for [{_i=0},{_i<_invedibles},{_i=_i+1}] do {
		_unit addMagazine [_edibles select (floor random (count _edibles)), floor random (_ninedibles + 1)];
	};
	