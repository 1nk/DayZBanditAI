//Reconfiguration for Celle (Incomplete)
//To do: Ensure pistols and rifles are in the correct loot tables.

//Confirmed Problem Skin On Login: ["HazmatVest_Red_DZC"];
//Skins to Test: ["HazmatVest_Black_DZC","HazmatVest_Yellow_DZC","HazmatVest_Olive_DZC","Hazmat_Black_DZC","Hazmat_Red_DZC","Hazmat_Yellow_DZC","Hazmat_Olive_DZC"];
//Problem Skin: ["Skin_HazmatVest_Red_DZC"];

DZAI_skinItemChance = 0.135;		//Chance to add random item from DZAI_DefaultSkinLoot table.
DZAI_BanditTypesDefault = DZAI_BanditTypesDefault - ["Camo1_DZ","Sniper1_DZ","Bandit1_DZ"] + ["Sniper1_DZC","Sniper2_DZC","Sniper3_DZC","Clan_Officer1_DZC","Clan_Officer2_DZC","Clan_Officer3_DZC","Clan_Delta1","Clan_Delta2","Clan_Delta3_DZC","Clan_UN_Helmet_DZC","Clan_UN_Cap_DZC","Clan_GER_DZC","Clan_GER_Hvy_DZC","Clan_Terror_DZC","Clan_Terror2_DZC","Clan_nobackpack_INS1_DZC","Clan_nobackpack_INS2_DZC","Clan_nobackpack_INS3_DZC","Clan_nobackpack_suit_DZC","Snow_Trooper1_DZC","Snow_Trooper2_DZC","Soldier1_DZC","Soldier2_DZC","Soldier3_DZC","Soldier1_SF_DZC","Soldier2_SF_DZC","Soldier3_SF_DZC","BAF_Officer1_DZC","BAF_Officer2_DZC","BAF_Officer3_DZC","CZ_Officer1_DZC","CZ_Officer2_DZC","CZ_Officer3_DZC","GER_Officer1_DZC","CZ_Heavy1_DZC","CZ_Heavy2_DZC","CZ_Heavy3_DZC","BAF_Heavy1_DZC","BAF_Heavy2_DZC","BAF_Heavy3_DZC","US_Heavy1_DZC","US_Heavy2_DZC","CIV_Pilot1_DZC","US_Pilot1_DZC","CZ_Pilot1_DZC","CZ_Pilot2_DZC","CZ_Pilot3_DZC","BAF_Pilot1_DZC","BAF_Pilot2_DZC","BAF_Pilot3_DZC","Doctor_DZC","Civ_Soldier_DZC","Cameraman_DZC","EuroMan01_DZC","EuroMan02_DZC","Storm_Trooper1_DZC","Storm_Trooper2_DZC","Storm_Trooper3_DZC","Storm_Trooper4_DZC","PrivateSec1_DZC","PrivateSec2_DZC","PrivateSec3_DZC","Asano_DZC","Camo1_DZC","Camo2_DZC","Camo3_DZC","Soldier1_STD_DZC","Soldier2_STD_DZC","Soldier3_STD_DZC","Soldier1_GL_DZC","Soldier2_GL_DZC","Soldier3_GL_DZC","Soldier1_AT_DZC","Soldier2_AT_DZC","Soldier3_AT_DZC","Soldier1_SL_DZC","Soldier2_SL_DZC","Soldier3_SL_DZC"];
DZAI_PistolsDefault0 = DZAI_PistolsDefault0 - ["Makarov"] + ["RH_m1911","RH_m1911old","RH_m9","RH_p226","RH_p226s","RH_vz61","RH_python","RH_mk2","RH_tt33","RH_ppk","RH_bull","RH_m93r","RH_anac","RH_mk22","RH_mk22v","RH_m9","RH_g19t","RH_Deagles","RH_pp2000p","RH_tec9","RH_muzi"];
DZAI_PistolsDefault1 = DZAI_PistolsDefault1 + ["RH_mac10p","RH_python","RH_usp","RH_uspm","RH_Deagleg","RH_Deaglemzb","RH_anacg","RH_bull","RH_Deaglem","RH_Deaglemz","RH_m9sd","RH_mp7p"];
DZAI_PistolsDefault2 = DZAI_PistolsDefault2 + ["RH_mp7p","RH_mp5kp","RH_uspm","RH_usp","RH_uspsd","RH_mk22sd","RH_mk22vsd","RH_browninghp","RH_p226s","MakarovSD"];
DZAI_PistolsDefault3 = DZAI_PistolsDefault3 + ["RH_m9c","RH_m9csd","RH_g17sd","RH_g18","RH_m1911sd","RH_g19t"];
DZAI_RiflesDefault0 = DZAI_RiflesDefault0 + ["RH_m14ebr","RH_mk14","RH_m4cmk","RH_m4cmkaim"];
DZAI_RiflesDefault1 = DZAI_RiflesDefault1 - ["AK_74","AKS_74_kobra","AKS_74_U","AK_47_M"] + ["RH_uzisd","RH_uzig","RH_mp7","RH_m4c","RH_m4cs","RH_m4cmk","RH_m4caim","RH_m4cacog","RH_m4ceotech","RH_m4ct","RH_m4ctsd","RH_m4cgl","RH_m4ctsdgleotech","RH_m4ctsdeotech","RH_P90","RH_P90i","RH_P90aim","RH_P90eot","RH_P90sd","RH_p90isd","RH_p90sdaim","RH_p90sdeot","RH_UMP","RH_umpaim","RH_umpeot","RH_umpRFX","RH_umpsd","RH_umpsdaim","RH_umpsdeot","RH_umpsdRFX","RH_HK53","RH_HK53aim","RH_HK53eot","RH_HK53RFX","RH_mp5sd6","RH_mp5sd6eot","RH_mp5sd6aim","RH_mp5sd6RFX","RH_m14ebr","RH_m14ebrsp","RH_m14ebrgc","RH_m14ebr_sd","RH_m14ebrsp_sd","RH_m14ebrgc_sd"];
DZAI_RiflesDefault2 = DZAI_RiflesDefault2 - ["AK_74","AKS_74_kobra","AKS_74_U","AK_47_M","M240_DZ","M107_DZ"] + ["RH_mp7aim","RH_mp7eot","RH_mp7sd","RH_mp7sdaim","RH_mp7sdeot","RH_mp7","G36K","MG36","RH_mp5a4","RH_mp5a4aim","RH_mp5a4eot","RH_mp5a4RFX","RH_mp5a5","RH_mp5a5aim","RH_mp5a5eot","RH_mp5a5RFX","RH_mp5a5eod","RH_mp5a5eodaim","RH_mp5a5eodeot","RH_mp5a5eodRFX","RH_mp5kpdw","RH_mp5kpdwaim","RH_mp5kpdweot","RH_mp5kpdwRFX","RH_M4CEOTECH","RH_M4CAIM","RH_M4CS","RH_M4CSAIM","RH_M4CMKAIM","RH_PDR","RH_pdraim","RH_pdreot","RH_P90","RH_P90i","RH_P90aim","RH_P90eot","RH_HK53","RH_HK53aim","RH_HK53eot","RH_HK53RFX","RH_m4cmk","RH_M60E4","RH_MK43","RH_mp5sd6RFX","RH_P90sd","RH_p90isd","RH_p90sdaim","RH_p90sdeot","RH_fmg9","RH_uzi","RH_uzisd","RH_tmpeot","RH_tmpsd","RH_tmpsdaim","RH_tmpsdeot","RH_M4C","RH_M4CSAIM","RH_M4CSACOG","RH_M4CSEOTECH","RH_M4CT","RH_M4CT_F","RH_M14EBR","RH_M14EBRSP","RH_M14EBRGC","RH_M4CTSD","RH_M4CTSD_F","RH_mk21a5","RH_mk21a5sd","RH_mk14","RH_mk14aim","RH_mk14eotech","RH_mk14sd","RH_mk14sdaim","RH_mk14sdeotech","RH_m60e4eotech","RH_m4cmkacog","RH_m4cmkeotech"];
//DZAI_RiflesDefault3 Removed Pending Testing: "RH_mp7RFX"
DZAI_RiflesDefault3 = DZAI_RiflesDefault3 - ["M107_DZ"] + ["RH_mp5sd6","RH_mp5sd6eot","RH_mp5sd6aim","RH_mp5sd6RFX","BAF_L85A2_UGL_Holo","BAF_L86A2_ACOG","RH_M60E4","RH_M60E4_EOTECH","M16A4_ACG_GL","RH_SCARL_AIM","RH_SCARLB_AIM","M4SPR","RH_M14EBRSP","M40A3","RH_SCARL_MK4","G36K","RH_ump","RH_xm8dc","G36a_CAMO","RH_mp7sdeot","RH_MK43","Saiga12K","RH_ak102","RH_ScarAkeotech","RH_ScarAkaim","RH_ScarAk","AK_107_pso","RPK_74","SVD"];
DZAI_DefaultEdibles = DZAI_DefaultEdibles + ["FoodCanBakedBeans","FoodCanSardines","FoodCanFrankBeans","FoodCanPasta","FoodCanGriff","FoodCanBadguy","FoodCanBoneboy","FoodCanCorn","FoodCanCurgon","FoodCanDemon","FoodCanFraggleos","FoodCanHerpy","FoodCanOrlok","FoodCanPowell","FoodCanTylers","ItemSodaMtngreen","ItemSodaR4z0r","ItemSodaClays","ItemSodaSmasht","ItemSodaDrwaste","ItemSodaLemonade","ItemSodaLvg","ItemSodaMzly","ItemSodaRabbit"];
DZAI_DefaultSkinLoot = ["Skin_Survivor2_DZ","Skin_EuroMan01_DZC","Skin_EuroMan02_DZC","Skin_Cameraman_DZC","Skin_Storm_Trooper1_DZC","Skin_Storm_Trooper2_DZC","Skin_Storm_Trooper3_DZC","Skin_Storm_Trooper4_DZC","Skin_Civ_Soldier_DZC","Skin_Doctor_DZC","Skin_BAF_Officer1_DZC","Skin_BAF_Officer2_DZC","Skin_BAF_Officer3_DZC","Skin_CZ_Officer1_DZC","Skin_CZ_Officer2_DZC","Skin_CZ_Officer3_DZC","Skin_GER_Officer1_DZC","Skin_Sniper1_DZC","Skin_Camo1_DZC","Skin_Camo2_DZC","Skin_Camo3_DZC","Skin_Sniper3_DZC","Skin_Snow_Trooper2_DZC","Skin_Hazmat_Red_DZC","Skin_Storm_Trooper1_DZC","Skin_Hazmat_Black_DZC","Skin_Hazmat_Red_DZC","Skin_Hazmat_Yellow_DZC","Skin_Hazmat_Olive_DZC","Skin_HazmatVest_Yellow_DZC","Skin_HazmatVest_Olive_DZC","Skin_Soldier1_STD_DZC","Skin_Soldier2_STD_DZC","Skin_Soldier3_STD_DZC","Skin_Soldier1_GL_DZC","Skin_Soldier2_GL_DZC","Skin_Soldier3_GL_DZC","Skin_Soldier1_AT_DZC","Skin_Soldier2_AT_DZC","Skin_Soldier3_AT_DZC","Skin_Soldier1_SL_DZC","Skin_Soldier2_SL_DZC","Skin_Soldier3_SL_DZC","Skin_CIV_Pilot1_DZC","Skin_Soldier1_DZC","Skin_Soldier2_DZC","Skin_Soldier3_DZC","Skin_Soldier2_DZC","Skin_Soldier1_SF_DZC","Skin_Soldier2_SF_DZC","Skin_Soldier3_SF_DZC","Skin_Soldier2_SF_DZC","Skin_Soldier3_SF_DZC","Skin_BAF_Pilot1_DZC","Skin_BAF_Pilot2_DZC","Skin_BAF_Pilot3_DZC""Skin_BAF_Heavy1_DZC","Skin_BAF_Heavy3_DZC","Skin_Soldier3_STD_DZC","Skin_Soldier1_STD_DZC","Skin_Soldier2_STD_DZC","Skin_US_Pilot1_DZC","Skin_US_Heavy1_DZC","Skin_US_Heavy2_DZC","Skin_Snow_Trooper1_DZC","Skin_CZ_Pilot1_DZC","Skin_CZ_Pilot2_DZC","Skin_CZ_Pilot3_DZC","Skin_CZ_Heavy1_DZC","Skin_CZ_Heavy2_DZC","Skin_CZ_Heavy3_DZC"];

_this = createTrigger ["EmptyDetector", [2356.353, 1182.4937, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_5 = _this;

_this = createTrigger ["EmptyDetector", [1673.566, 2083.4744, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_7 = _this;

_this = createTrigger ["EmptyDetector", [360.31271, 3856.1748]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_9 = _this;

_this = createTrigger ["EmptyDetector", [563.29688, 5061.6577, 9.5367432e-007]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_13 = _this;

_this = createTrigger ["EmptyDetector", [610.13916, 8719.7695, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_15 = _this;

_this = createTrigger ["EmptyDetector", [1651.0822, 9451.3926, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_17 = _this;

_this = createTrigger ["EmptyDetector", [2967.8748, 10919.845]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_19 = _this;

_this = createTrigger ["EmptyDetector", [753.26855, 11076.064, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_23 = _this;

_this = createTrigger ["EmptyDetector", [6712.2695, 7970.4697, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_25 = _this;

_this = createTrigger ["EmptyDetector", [8517.1914, 8122.8779, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_27 = _this;

_this = createTrigger ["EmptyDetector", [9078.0566, 8908.0117, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_29 = _this;

_this = createTrigger ["EmptyDetector", [8311.7725, 9614.6348, 7.6293945e-006]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_31 = _this;

_this = createTrigger ["EmptyDetector", [9592.7588, 10074.17, 3.9004173]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_33 = _this;

_this = createTrigger ["EmptyDetector", [10467.522, 10704.588, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_35 = _this;

_this = createTrigger ["EmptyDetector", [10984.083, 11031.729]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_37 = _this;

_this = createTrigger ["EmptyDetector", [10437.518, 11522.051, 9.5367432e-007]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_41 = _this;

_this = createTrigger ["EmptyDetector", [7041.874, 11332.198, 9.5367432e-007]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_43 = _this;

_this = createTrigger ["EmptyDetector", [8375.2324, 6201.9375]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_49 = _this;

_this = createTrigger ["EmptyDetector", [6972.5615, 6634.1411, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_51 = _this;

_this = createTrigger ["EmptyDetector", [6048.7246, 5733.2813, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_53 = _this;

_this = createTrigger ["EmptyDetector", [7049.1787, 4662.458, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_55 = _this;

_this = createTrigger ["EmptyDetector", [8176.6689, 4471.7256, 3.4234772]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_57 = _this;

_this = createTrigger ["EmptyDetector", [9073.4404, 3984.7302, 0.16929245]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_61 = _this;

_this = createTrigger ["EmptyDetector", [8438.1152, 3352.7644, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_63 = _this;

_this = createTrigger ["EmptyDetector", [9365.8906, 3105.7207, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_65 = _this;

_this = createTrigger ["EmptyDetector", [8897.3779, 2686.7542, 7.9469242]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_69 = _this;

_this = createTrigger ["EmptyDetector", [8354.4033, 2751.6489]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_71 = _this;

_this = createTrigger ["EmptyDetector", [8923.7383, 2101.8552]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_73 = _this;

_this = createTrigger ["EmptyDetector", [7629.2075, 1394.094, 7.0633612]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_81 = _this;

_this = createTrigger ["EmptyDetector", [7087.311, 2571.6694, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_83 = _this;

_this = createTrigger ["EmptyDetector", [6155.9063, 2613.449, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_85 = _this;

_this = createTrigger ["EmptyDetector", [5669.0044, 3629.1475]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_87 = _this;

_this = createTrigger ["EmptyDetector", [5748.4819, 4174.6763]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_89 = _this;

_this = createTrigger ["EmptyDetector", [4645.0244, 3038.4998, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_95 = _this;

_this = createTrigger ["EmptyDetector", [4563.7964, 5537.4448, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_97 = _this;

_this = createTrigger ["EmptyDetector", [4663.7559, 484.27148, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_99 = _this;

_this = createTrigger ["EmptyDetector", [6031.21, 1332.1838, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_101 = _this;

_this = createTrigger ["EmptyDetector", [10925.801, 875.45728, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_103 = _this;

_this = createTrigger ["EmptyDetector", [11969.814, 2345.9883, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_105 = _this;

_this = createTrigger ["EmptyDetector", [11822.666, 5783.8203, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_107 = _this;

_this = createTrigger ["EmptyDetector", [2694.0867, 4061.2859, 3.232378]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_109 = _this;
