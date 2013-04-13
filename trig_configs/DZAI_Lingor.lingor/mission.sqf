activateAddons [
];

activateAddons [];
initAmbientLife;

_this = createCenter west;
_center_0 = _this;

_group_0 = createGroup _center_0;

_unit_0 = objNull;
if (true) then
{
  _this = _group_0 createUnit ["CDF_Soldier_AR", [4719.2432, 3765.7402, 0], [], 0, "CAN_COLLIDE"];
  _unit_0 = _this;
  _this setUnitAbility 0.60000002;
  if (true) then {_group_0 selectLeader _this;};
  if (true) then {selectPlayer _this;};
};

_this = createTrigger ["EmptyDetector", [1786.98, 596.24695]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [1188.6392, 703.38135]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_2 = _this;

_this = createTrigger ["EmptyDetector", [689.25891, 960.71619, 1.5258789e-005]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_4 = _this;

_this = createTrigger ["EmptyDetector", [668.66809, 1512.7637]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_6 = _this;

_this = createTrigger ["EmptyDetector", [1029.8649, 2043.1067]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_8 = _this;

_this = createTrigger ["EmptyDetector", [2104.4998, 1086.9586]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_10 = _this;

_this = createTrigger ["EmptyDetector", [2721.5989, 1377.7301]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_12 = _this;

_this = createTrigger ["EmptyDetector", [3270.4324, 1390.9686]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_14 = _this;

_this = createTrigger ["EmptyDetector", [3828.3474, 1467.4255]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_16 = _this;

_this = createTrigger ["EmptyDetector", [4302.2827, 1656.1499, 0.080739975]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_20 = _this;

_this = createTrigger ["EmptyDetector", [4705.125, 1870.5652, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_22 = _this;

_this = createTrigger ["EmptyDetector", [4041.6013, 2365.7727]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_24 = _this;

_this = createTrigger ["EmptyDetector", [2982.6289, 3746.0688, 6.1199799]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_26 = _this;

_this = createTrigger ["EmptyDetector", [3536.1841, 3724.3757]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_28 = _this;

_this = createTrigger ["EmptyDetector", [1907.5411, 4538.854]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_30 = _this;

_this = createTrigger ["EmptyDetector", [818.98438, 4921.438]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_32 = _this;

_this = createTrigger ["EmptyDetector", [880.9198, 5574.8247, 3.8349648]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_36 = _this;

_this = createTrigger ["EmptyDetector", [2786.8728, 5378.0957, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_38 = _this;

_this = createTrigger ["EmptyDetector", [3376.7754, 5193.8906, 5.9604645e-008]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_40 = _this;

_this = createTrigger ["EmptyDetector", [4037.2544, 4985.3105]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_42 = _this;

_this = createTrigger ["EmptyDetector", [4701.647, 5015.4766]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_44 = _this;

_this = createTrigger ["EmptyDetector", [4282.311, 4470.6416]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_46 = _this;

_this = createTrigger ["EmptyDetector", [3684.6152, 4458.5483]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_48 = _this;

_this = createTrigger ["EmptyDetector", [3139.9341, 4594.6597]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_50 = _this;

_this = createTrigger ["EmptyDetector", [4724.7114, 3164.7393]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_52 = _this;

_this = createTrigger ["EmptyDetector", [3580.6619, 2770.1504, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_54 = _this;

_this = createTrigger ["EmptyDetector", [4837.292, 2677.4658, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_56 = _this;

_this = createTrigger ["EmptyDetector", [5381.5337, 2141.0615, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_58 = _this;

_this = createTrigger ["EmptyDetector", [5668.752, 3193.9785, -0.00015449524]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_60 = _this;

_this = createTrigger ["EmptyDetector", [6724.832, 3351.6597, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_62 = _this;

_this = createTrigger ["EmptyDetector", [6757.5962, 2742.5635, 1.4901161e-007]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_64 = _this;

_this = createTrigger ["EmptyDetector", [6815.2852, 2074.0981, 2.9927869]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_66 = _this;

_this = createTrigger ["EmptyDetector", [7481.1729, 1951.7023, -4.7683716e-007]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_68 = _this;

_this = createTrigger ["EmptyDetector", [7635.5903, 2855.5254, 4.7683716e-007]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_72 = _this;

_this = createTrigger ["EmptyDetector", [8344.5273, 2833.6694, 2.969995]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_74 = _this;

_this = createTrigger ["EmptyDetector", [6068.6338, 1710.0781, 0.047464609]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_76 = _this;

_this = createTrigger ["EmptyDetector", [5834.3286, 4564.4883]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_78 = _this;

_this = createTrigger ["EmptyDetector", [6820.2139, 4760.1143, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_82 = _this;

_this = createTrigger ["EmptyDetector", [6638.6533, 4319.7192]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_84 = _this;

_this = createTrigger ["EmptyDetector", [7012.9639, 5903.3506]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_86 = _this;

_this = createTrigger ["EmptyDetector", [6360.4697, 6009.6294]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_88 = _this;

_this = createTrigger ["EmptyDetector", [6811.6973, 6536.4175, 4.6562405]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_92 = _this;

_this = createTrigger ["EmptyDetector", [6194.25, 6733.0996]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_94 = _this;

_this = createTrigger ["EmptyDetector", [8612.2471, 7818.9756]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_98 = _this;

_this = createTrigger ["EmptyDetector", [8368.8955, 8807.5166, 2.9700069]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_100 = _this;

_this = createTrigger ["EmptyDetector", [5205.4814, 6992.501, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_102 = _this;

_this = createTrigger ["EmptyDetector", [4364.9629, 6769.4038, 4.095047]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_104 = _this;

_this = createTrigger ["EmptyDetector", [3689.5784, 6479.9902]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_106 = _this;

_this = createTrigger ["EmptyDetector", [3938.0479, 5961.0493, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_108 = _this;

_this = createTrigger ["EmptyDetector", [4510.2466, 5792.0288]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_112 = _this;

_this = createTrigger ["EmptyDetector", [5194.457, 5560.1504, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_114 = _this;

_this = createTrigger ["EmptyDetector", [5402.2974, 5010.3179, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_116 = _this;

_this = createTrigger ["EmptyDetector", [3212.1772, 5937.606]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_118 = _this;

_this = createTrigger ["EmptyDetector", [3027.6021, 6430.1846]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_120 = _this;

_this = createTrigger ["EmptyDetector", [2805.8235, 6951.0005]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_122 = _this;

_this = createTrigger ["EmptyDetector", [3069.2361, 8054.5342, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_124 = _this;

_this = createTrigger ["EmptyDetector", [4283.5151, 7499.082, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_126 = _this;

_this = createTrigger ["EmptyDetector", [1369.1008, 1354.0753, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_128 = _this;

processInitCommands;
runInitScript;
finishMissionInit;
