/*
        Usage: [_unit] call fnc_unitBackpack;
*/
        private ["_unit","_bag","_bags","_rnd","_equip","_equips","_rndeq3","_i"];
        _unit = _this select 0;

        _bags = ["DZ_Patrol_Pack_EP1", "DZ_Assault_Pack_EP1", "DZ_CivilBackpack_EP1", "DZ_ALICE_Pack_EP1", "DZ_Backpack_EP1", "BAF_AssaultPack_DZN"];
        _equips = ["ItemGPS", "NVGoggles", "ItemToolbox", "ItemMatchbox", "ItemEtool", "ItemCompass", "ItemWatch", "ItemFlashlightRed", "ItemKnife", "binocular_vector", "binocular", "BrokenItemGPS", "BrokenNVGoggles", "BrokenItemRadio"];
       

        _rnd = floor random (count _bags);
        _rndeq3 = floor random (count _equips);
        _bag = _bags select _rnd;
        _equip = _equips select _rndeq3;

        for [{_i=1},{_i<=1},{_i=_i+1}] do {
                        _unit addBackpack _bag;
        };
        for [{_i=1},{_i<=1},{_i=_i+1}] do {
                        _unit addWeapon _equip;
        }; 