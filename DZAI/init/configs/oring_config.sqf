//Reconfiguration for Oring 1.0.8
//To do: Ensure pistols and rifles are assigned to correct loot table

DZAI_BanditTypesDefault = DZAI_BanditTypesDefault + ["BW1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","SurvivorW2_DZ","Survivor2_DZ","Sniper1_DZ","Soldier1_DZ","Camo1_DZ","BanditW1_DZ","Bandit1_DZ","SurvivorW2_DZ"];
DZAI_PistolsDefault1 = DZAI_PistolsDefault1 + ["KPFS_P226","KPFS_PM63","KPFS_P88"];
//DZAI_RiflesDefault0 = DZAI_RiflesDefault0 + [];
//DZAI_RiflesDefault1 = DZAI_RiflesDefault1 + [];
DZAI_RiflesDefault2 = DZAI_RiflesDefault2 - ["M107_DZ"];
DZAI_RiflesDefault3 = DZAI_RiflesDefault3 - ["M107_DZ"] + ["KPFS_KarS","KPFS_MG1","KPFS_MP5A3SD"] ;
DZAI_DefaultSkinLoot = DZAI_DefaultSkinLoot + ["Skin_police1_DZ","Skin_police2_DZ","Skin_civilian2_DZ","Skin_civilian3_DZ","Skin_civilian4_DZ","Skin_civilian5_DZ"];

_this = createTrigger ["EmptyDetector", [2109.7009, 3037.5085, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [2971.96, 3378.4607, 4.0599823]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_2 = _this;

_this = createTrigger ["EmptyDetector", [4255.7202, 1848.056, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_4 = _this;

_this = createTrigger ["EmptyDetector", [903.17896, 1973.7341, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_6 = _this;

_this = createTrigger ["EmptyDetector", [1839.4835, 7060.9951, 3.687088]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_8 = _this;

_this = createTrigger ["EmptyDetector", [1615.6993, 7398.9482, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_10 = _this;

_this = createTrigger ["EmptyDetector", [3322.5818, 7188.7842, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_12 = _this;

_this = createTrigger ["EmptyDetector", [4966.1294, 7573.208, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_14 = _this;

_this = createTrigger ["EmptyDetector", [5275.416, 7056.772, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_16 = _this;

_this = createTrigger ["EmptyDetector", [7214.5273, 6882.5146, 3.8146973e-006]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_18 = _this;

_this = createTrigger ["EmptyDetector", [7854.2119, 7714.7266, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_20 = _this;

_this = createTrigger ["EmptyDetector", [8095.9414, 6379.8096, 3.399765]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_22 = _this;

_this = createTrigger ["EmptyDetector", [8456.9492, 6106.2788, 9.6538696]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_24 = _this;

_this = createTrigger ["EmptyDetector", [7626.2041, 6075.6504, 141.37204]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_26 = _this;

_this = createTrigger ["EmptyDetector", [8456.9492, 4995.2568, 0.080738068]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_28 = _this;

_this = createTrigger ["EmptyDetector", [9239.1387, 4187.3369, 3.8146973e-006]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_30 = _this;

_this = createTrigger ["EmptyDetector", [8441.1152, 3486.0835, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_32 = _this;

_this = createTrigger ["EmptyDetector", [7231.4136, 3401.5955]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_34 = _this;

_this = createTrigger ["EmptyDetector", [7826.7637, 2218.7578, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_36 = _this;

_this = createTrigger ["EmptyDetector", [9489.3105, 2666.5474, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_38 = _this;

_this = createTrigger ["EmptyDetector", [6866.1772, 1714.9957, -3.8146973e-006]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_40 = _this;

_this = createTrigger ["EmptyDetector", [6441.8311, 2239.8804, -4.5776367e-005]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_42 = _this;

_this = createTrigger ["EmptyDetector", [7139.5737, 2077.24]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_44 = _this;

_this = createTrigger ["EmptyDetector", [2780.0024, 2779.5513, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_46 = _this;

_this = createTrigger ["EmptyDetector", [4428.5361, 5605.5215, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_48 = _this;

_this = createTrigger ["EmptyDetector", [4962.626, 5775.061, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_50 = _this;

_this = createTrigger ["EmptyDetector", [5584.4702, 5275.5249, 3.8146973e-006]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_52 = _this;

_this = createTrigger ["EmptyDetector", [5710.0488, 4835.0244, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_54 = _this;

_this = createTrigger ["EmptyDetector", [5090.564, 5124.5967]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_56 = _this;