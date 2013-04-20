//unitConsumables Version 0.04
/*
	Usage: [_unit] call fnc_unitConsumables;
*/
	private ["_unit","_miscItemS","_miscItemL","_skinItem","_bpmedical","_bpedible","_invmedical","_invedible"];
	_unit = _this select 0;
	
	//Add one guaranteed Bandage to inventory
	_unit addMagazine "ItemBandage";

	//Chance to add miscellaneous item (Small) to backpack
	for "_i" from 1 to DZAI_numMiscItemS do {
		if ((random 1) < DZAI_chanceMiscItemS) then {
			_miscItemS = DZAI_DefaultMiscItemS call BIS_fnc_selectRandom;
			(unitBackpack _unit) addMagazineCargoGlobal [_miscItemS,1];
			if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Misc Item (Small): %1 for AI.",_miscItemS];};
		};
	};
	
	//Chance to add miscellaneous item (Large) to backpack
	for "_i" from 1 to DZAI_numMiscItemL do {
		if ((random 1) < DZAI_chanceMiscItemL) then {
			_miscItemL = DZAI_DefaultMiscItemL call BIS_fnc_selectRandom;
			(unitBackpack _unit) addMagazineCargoGlobal [_miscItemL,1];
			if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Misc Item (Large): %1 for AI.",_miscItemL];};
		};
	};
		
	//Chance to add skin to backpack
	if ((random 1) < DZAI_skinItemChance) then {
		_skinItem = DZAI_DefaultSkinLoot call BIS_fnc_selectRandom;
		(unitBackpack _unit) addMagazineCargoGlobal [_skinItem,1];
		if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Skin Item: %1 for AI.",_skinItem];};
	};
	
	//Backpack Medicals
	for "_i" from 1 to DZAI_bpmedicals do {
		_bpmedical = DZAI_DefaultMedicals2 call BIS_fnc_selectRandom;
		(unitBackpack _unit) addMagazineCargoGlobal [_bpmedical, (floor random (DZAI_nbpmedicals + 1))];
		if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Backpack Medical Item: %1 for AI.",_bpmedical];};
	};

	//Backpack Edibles
	for "_i" from 1 to DZAI_bpedibles do {
		_bpedible = DZAI_DefaultEdibles call BIS_fnc_selectRandom;
		(unitBackpack _unit) addMagazineCargoGlobal [_bpedible, (floor random (DZAI_nbpedibles + 1))];
		if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Backpack Edible Item: %1 for AI.",_bpedible];};
	};
	
	//Inventory Medicals
	for "_i" from 1 to DZAI_invmedicals do {
		_invmedical = DZAI_DefaultMedicals1 call BIS_fnc_selectRandom;
		_unit addMagazine [_invmedical, (floor random (DZAI_ninmedicals + 1))];
		if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Inventory Medical Item: %1 for AI.",_invmedical];};
	};
	
	//Inventory Edibles
	for "_i" from 1 to DZAI_invedibles do {
		_invedible = DZAI_DefaultEdibles call BIS_fnc_selectRandom;
		_unit addMagazine [_invedible, (floor random (DZAI_ninedibles + 1))];
		if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Inventory Edible Item: %1 for AI.",_invedible];};
	};
	