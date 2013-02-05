/*
	Usage: [_unit] call fnc_genericLoot;
*/
	private ["_unit","_edible""_edibles","_medical","_medicals1","_medicals2","_misc","_miscs","_rnde","_rndm","_rnde2","_rndm2","_rndm3","_i","_bpedi1","_bpedi2","_bpmedi1","_bpmedi2"];
	_unit = _this select 0;

	_edibles = ["ItemSodaCoke", "ItemSodaPepsi", "ItemWaterbottle", "FoodCanSardines", "FoodCanBakedBeans", "FoodCanFrankBeans", "FoodCanPasta", "FoodSteakCooked", "FoodSteakRaw", "ItemWaterbottleUnfilled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","HIDDEN","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw"];
	_medicals1 = ["ItemBandage", "ItemPainkiller"];
	_medicals2 = ["ItemMorphine", "ItemBandage", "ItemBloodbag", "ItemPainkiller", "ItemAntibiotic"];
	_miscs = ["ItemSandbag", "ItemTent", "ItemJerrycan", "PartWheel", "PartEngine", "PartFueltank", "ItemTankTrap", "ItemWire", "PartGlass", "PartVRotor", "TrapBear", "Skin_Camo1_DZ", "Skin_Sniper1_DZ", "ItemHeatpack", "HandRoadFlare", "HandChemBlue", "HandChemRed", "HandChemGreen"];

	_rnde = floor random (count _edibles);
	_rndm = floor random (count _medicals1);
	_rnde2 = floor random (count _edibles);
	_rndm2 = floor random (count _medicals2);
	_rndm3 = floor random (count _miscs);
	_bpedi1 =  floor random 3;
	_bpedi2 =  floor random 3;
	_bpmedi1 = floor random 3;
	_bpmedi2 = floor random 2;
	_edible = _edibles select _rnde;
	_medical = _medicals1 select _rndm;
	_edible2 = _edibles select _rnde2;
	_medical2 = _medicals2 select _rndm2;
	_misc = _miscs select _rndm3;
	
	_unit addMagazine _edible;
	_unit addMagazine _edible;
	_unit addMagazine "ItemBandage";
	_unit addMagazine _medical;
		
	(unitBackpack _unit) addMagazineCargo [_edible,_bpedi1];
	(unitBackpack _unit) addMagazineCargo [_medical,_bpmedi2];
	(unitBackpack _unit) addMagazineCargo [_edible2,_bpedi2];
	(unitBackpack _unit) addMagazineCargo [_medical2,_bpmedi2];
	(unitBackpack _unit) addMagazineCargo [_misc,1];