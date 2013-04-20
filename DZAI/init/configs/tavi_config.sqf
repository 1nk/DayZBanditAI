//Taviana Configuration 0.04

//DZAI_RiflesDefault0 = DZAI_RiflesDefault0 - [];
DZAI_RiflesDefault1 = DZAI_RiflesDefault1 - ["Sa58P_EP1","Sa58V_EP1","BAF_L85A2_RIS_Holo"];
//DZAI_RiflesDefault2 = DZAI_RiflesDefault2 - [];
DZAI_RiflesDefault3 = DZAI_RiflesDefault3 - ["G36C_camo","G36A_camo","G36K_camo","BAF_L85A2_RIS_SUSAT"];
//DZAI_RiflesDefault4	= [];
DZAI_DefaultBackpacks = DZAI_DefaultBackpacks - ["DZ_British_ACU", "DZ_TK_Assault_Pack_EP1"];
DZAI_DefaultEdibles = DZAI_DefaultEdibles - ["ItemWaterbottleBoiled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw","FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"];

_this = createTrigger ["EmptyDetector", [11768.875, 763.73596, 6.7572432]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [11834.952, 1410.0173, 2.0023861]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_2 = _this;

_this = createTrigger ["EmptyDetector", [11014.68, 755.75409, 1.0374718]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_4 = _this;

_this = createTrigger ["EmptyDetector", [10022.376, 1366.7039, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_6 = _this;

_this = createTrigger ["EmptyDetector", [8959.4355, 2293.3899, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_8 = _this;

_this = createTrigger ["EmptyDetector", [8233.4297, 2981.3306, 4.7683716e-006]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_10 = _this;

_this = createTrigger ["EmptyDetector", [7617.0444, 4529.4404]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_12 = _this;

_this = createTrigger ["EmptyDetector", [7648.1299, 4071.666]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_14 = _this;

_this = createTrigger ["EmptyDetector", [9482.4277, 4466.2095]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_16 = _this;

_this = createTrigger ["EmptyDetector", [9207.54, 5346.5391]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_18 = _this;

_this = createTrigger ["EmptyDetector", [3872.2354, 7168.2588, 3.733963]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_20 = _this;

_this = createTrigger ["EmptyDetector", [3408.4778, 7666.5513]];
_this setTriggerArea [300, 300, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_22 = _this;

_this = createTrigger ["EmptyDetector", [5482.3218, 8775.8701]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_24 = _this;

_this = createTrigger ["EmptyDetector", [5870.9624, 9862.3135, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_26 = _this;

_this = createTrigger ["EmptyDetector", [6720.0957, 9862.3135, 13.534454]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_28 = _this;

_this = createTrigger ["EmptyDetector", [7766.8154, 9092.8164, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_30 = _this;

_this = createTrigger ["EmptyDetector", [7536.5693, 8024.3408]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_32 = _this;

_this = createTrigger ["EmptyDetector", [8996.4238, 8179.5488, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_34 = _this;

_this = createTrigger ["EmptyDetector", [9318.1143, 7923.0483]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_36 = _this;

_this = createTrigger ["EmptyDetector", [7966.0332, 6699.373, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_38 = _this;

_this = createTrigger ["EmptyDetector", [10515.393, 6645.7002]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_40 = _this;

_this = createTrigger ["EmptyDetector", [13339.549, 8675.5801]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_42 = _this;

_this = createTrigger ["EmptyDetector", [15218.431, 7868.8906, 0.0070037842]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_44 = _this;

_this = createTrigger ["EmptyDetector", [15558.876, 8494.04, 0.0070037842]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_46 = _this;

_this = createTrigger ["EmptyDetector", [16526.236, 8302.9629, 0.0070037842]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_48 = _this;

_this = createTrigger ["EmptyDetector", [17333.756, 7436.894, 0.0070037842]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_50 = _this;

_this = createTrigger ["EmptyDetector", [16243.915, 7409.8955, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_52 = _this;

_this = createTrigger ["EmptyDetector", [17607.768, 6319.5176, 3.035965]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_54 = _this;

_this = createTrigger ["EmptyDetector", [16785.719, 6280.0581, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_56 = _this;

_this = createTrigger ["EmptyDetector", [17178.059, 5636.2168, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_58 = _this;

_this = createTrigger ["EmptyDetector", [15306.893, 9238.1553]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_60 = _this;

_this = createTrigger ["EmptyDetector", [15665.925, 9498.6777, 12.227304]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_62 = _this;

_this = createTrigger ["EmptyDetector", [15133.304, 9694.4922]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_64 = _this;

_this = createTrigger ["EmptyDetector", [14697.368, 9733.9551]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_66 = _this;

_this = createTrigger ["EmptyDetector", [14651.698, 10246.95, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_68 = _this;

_this = createTrigger ["EmptyDetector", [15232.946, 10128.567, 0.36575985]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_70 = _this;

_this = createTrigger ["EmptyDetector", [16553.207, 9717.3398, 3.4304581]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_72 = _this;

_this = createTrigger ["EmptyDetector", [16746.264, 10550.179, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_74 = _this;

_this = createTrigger ["EmptyDetector", [16264.657, 10039.261, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_76 = _this;

_this = createTrigger ["EmptyDetector", [16299.946, 10543.948, 6.0764122]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,75,300,275,1,thisList] call fnc_spawnBandits_bldgs;", ""];
_trigger_78 = _this;

_this = createTrigger ["EmptyDetector", [14388.056, 11299.94]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_80 = _this;

_this = createTrigger ["EmptyDetector", [14035.153, 12215.854, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_82 = _this;

_this = createTrigger ["EmptyDetector", [12669.788, 11850.409]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_84 = _this;

_this = createTrigger ["EmptyDetector", [12646.288, 12270.337]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_86 = _this;

_this = createTrigger ["EmptyDetector", [12489.873, 13687.467]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_88 = _this;

_this = createTrigger ["EmptyDetector", [13707.889, 13546.912, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_90 = _this;

_this = createTrigger ["EmptyDetector", [12782.429, 14425.008]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_92 = _this;

_this = createTrigger ["EmptyDetector", [12568.079, 15048.08]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_94 = _this;

_this = createTrigger ["EmptyDetector", [13021.396, 15004.611, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_96 = _this;

_this = createTrigger ["EmptyDetector", [12291.456, 15397.29, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_98 = _this;

_this = createTrigger ["EmptyDetector", [11665.791, 14927.813]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_100 = _this;

_this = createTrigger ["EmptyDetector", [11286.337, 15285.716, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_102 = _this;

_this = createTrigger ["EmptyDetector", [11741.102, 15547.986]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_104 = _this;

_this = createTrigger ["EmptyDetector", [11267.508, 15808.808]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_106 = _this;

_this = createTrigger ["EmptyDetector", [10424.73, 16940.711, 1.7702827]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,0,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_108 = _this;

_this = createTrigger ["EmptyDetector", [10148.763, 18989.43]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_110 = _this;

_this = createTrigger ["EmptyDetector", [11001.157, 18806.449]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_112 = _this;

_this = createTrigger ["EmptyDetector", [8858.2344, 19440.977, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_114 = _this;

_this = createTrigger ["EmptyDetector", [8137.5273, 21314.248, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_116 = _this;

_this = createTrigger ["EmptyDetector", [11903.227, 21082.705, 12.686069]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_118 = _this;

_this = createTrigger ["EmptyDetector", [14750.142, 18575.111, 5.151721]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_120 = _this;

_this = createTrigger ["EmptyDetector", [15013.731, 18175.184]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_122 = _this;

_this = createTrigger ["EmptyDetector", [15419.253, 16327.702, 0.0069999695]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_124 = _this;

_this = createTrigger ["EmptyDetector", [15128.147, 14856.958, 0.10200119]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_126 = _this;

_this = createTrigger ["EmptyDetector", [15057.181, 15907.486, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_128 = _this;

_this = createTrigger ["EmptyDetector", [16450.443, 14297.641, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_130 = _this;

_this = createTrigger ["EmptyDetector", [16848.723, 14094.778, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_132 = _this;

_this = createTrigger ["EmptyDetector", [16181.061, 13660.074]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_134 = _this;

_this = createTrigger ["EmptyDetector", [15591.604, 13348.543]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_136 = _this;

_this = createTrigger ["EmptyDetector", [16939.965, 12726.918, 0.071762085]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_138 = _this;

_this = createTrigger ["EmptyDetector", [17367.211, 13047.148, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_140 = _this;

_this = createTrigger ["EmptyDetector", [16243.167, 11595.25, 0.42528534]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_142 = _this;

_this = createTrigger ["EmptyDetector", [8186.0859, 4996.0801]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_144 = _this;

_this = createTrigger ["EmptyDetector", [8496.291, 5617.8115, 9.3921585]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_147 = _this;

_this = createTrigger ["EmptyDetector", [10362.393, 18316.078, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_150 = _this;

_this = createTrigger ["EmptyDetector", [13478.163, 19380.889, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_152 = _this;