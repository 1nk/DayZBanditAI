/*
	Usage: [] call fnc_spawn_random_unitLoot;
*/

	// private[""];
	switch (_iClass) do {
		default {
			_unit addBackpack "DZ_ALICE_Pack_EP1";
			_arrayLootSpawn = [] + getArray (configFile >> "cfgLoot" >> _iClass);
			_itemType = _arrayLootSpawn select 0;
			_weights = _arrayLootSpawn call fnc_buildWeightedArray;
			_qty = 0;
			_max = ceil(random 4) + 1;
			while {_qty < _max} do {
				private["_tQty","_indexLootSpawn","_canType"];
				_tQty = floor(random 1) + 1;
				
				_indexLootSpawn = _weights call BIS_fnc_selectRandom;
				_canType = _itemType select _indexLootSpawn;
				
				_unit addMagazineCargoGlobal [_canType,_tQty];
				_qty = _qty + _tQty;
			};
			if (_iItem != "") then {
				_unit addWeaponCargoGlobal [_iItem,1];
			};
		};
		case "weapon": {
			_unit addWeaponCargoGlobal [_iItem,1];
			_mags = [] + getArray (configFile >> "cfgWeapons" >> _iItem >> "magazines");
			if (count _mags > 0) then {
				_unit addMagazineCargoGlobal [(_mags select 0),(round(random 3))];
			};
		};
		case "magazine": {
			_unit addMagazineCargoGlobal [_iItem,1];
		};
		case "object": {
		};
	};