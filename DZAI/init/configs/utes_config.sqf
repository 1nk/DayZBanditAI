//Reconfiguration for Utes (Incomplete)

_this = createTrigger ["EmptyDetector", [3376.7136, 4402.3555, 0]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [3561.8384, 3708.8481]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_2 = _this;

_this = createTrigger ["EmptyDetector", [3855.0464, 3373.2051]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_4 = _this;

_this = createTrigger ["EmptyDetector", [4354.2373, 3207.3979, 0.34515762]];
_this setTriggerArea [250, 250, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 45, 60, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,75,300,250,1,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_6 = _this;