
/*
	NOTES:

	init field:	this setVariable ["playerPC", true];

		>	Rifles are intentionally left unloaded.

		-	Uniform slots are reserved for:
			IFAK, PRR and small items; PlastiCuffs, Maglite.

		-	Vest slots are reserved for:
			Minimum fighting kit; Ammunition, smoke, grenades.

		-	Bergen slots are reserved for:
			night fighting kit, mission specific equipment and extra ammunition so they can be accessed by other players.
			Additionally, all (near) empty magazines should be moved here so they can be repacked for you while you maintain security.
			> Bergens can be ditched/stashed if weight is a likely issue pre-attack.



	Ideas:

		-	Do ARO_isDesert check.
			If true then uniforms are replaced by "UK3CB_BAF_U_Smock_MTP".



	"All patrols must have a day and night capability regardless of the expected duration of the patrol".
		- TACTICS FOR STABILITY OPERATIONS pg. 109 (3. Dress).

	"A weapon in the backpack can now be swapped (with a time penalty) with the primary weapon via a custom key bind (“4” by default)" - 3CB.

*/

//systemChat "setGear init.";

_kitAR =
[
	[
		"UK3CB_BAF_L110A3",
		"UK3CB_BAF_SFFH","UK3CB_BAF_LLM_IR_Black","",
		[],
		[],
		""
	],
	[],
	[],
	[
		(selectRandom ["UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"]),
		[
			["ACE_elasticBandage",5],
			["ACE_fieldDressing",5],
			["ACE_packingBandage",5],
			["ACE_quikclot",5],
			["ACE_tourniquet",5],
			["ACE_morphine",1],
			["ACE_epinephrine",1],
			["ACE_CableTie",2],
			["ACRE_PRC343",1]
		]
	],
	[
		"UK3CB_BAF_V_Osprey_MG_A",
		[
			["UK3CB_BAF_556_200Rnd",2,200],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellGreen",2,1],
			["HandGrenade",2,1]
		]
	],
	[
		"UK3CB_BAF_B_Kitbag_MTP",
		[
			["UK3CB_BAF_556_200Rnd",2,200],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellOrange",2,1],
			["UK3CB_BAF_SmokeShellRed",2,1],
			["UK3CB_BAF_SmokeShellBlue",2,1],
			["UK3CB_BAF_SmokeShellPurple",2,1],
			["HandGrenade",2,1],
			["UK3CB_BAF_Kite",1],
			["UK3CB_BAF_HMNVS",1]
		]
	],
	(selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F","UK3CB_BAF_H_Mk7_Net_A","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D"]),
	nil,
	[],
	["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]
];


_kitGREN =
[
	[
		"UK3CB_BAF_L85A2_UGL",
		"UK3CB_BAF_SFFH","UK3CB_BAF_LLM_IR_Black","UK3CB_BAF_SpecterLDS_Dot",
		[],
		[],
		""
	],
	[
		"UK3CB_BAF_AT4_CS_AT_Launcher","","","",[],[],""
	],
	[],
	[
		(selectRandom ["UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"]),
		[
			["ACE_elasticBandage",5],
			["ACE_fieldDressing",5],
			["ACE_packingBandage",5],
			["ACE_quikclot",5],
			["ACE_tourniquet",5],
			["ACE_morphine",1],
			["ACE_epinephrine",1],
			["ACE_CableTie",2],
			["ACRE_PRC343",1]
		]
	],
	[
		(selectRandom ["UK3CB_BAF_V_Osprey_Grenadier_A","UK3CB_BAF_V_Osprey_Grenadier_B"]),
		[
			["UK3CB_BAF_556_30Rnd",6,30],
			["UK3CB_BAF_556_30Rnd_T",2,30],
			["1Rnd_HE_Grenade_shell",8,1],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellGreen",2,1],
			["HandGrenade",2,1]
		]
	],
	[
		"UK3CB_BAF_B_Kitbag_MTP",
		[
			["UK3CB_BAF_556_30Rnd",4,30],
			["1Rnd_HE_Grenade_shell",8,1],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellOrange",2,1],
			["UK3CB_BAF_SmokeShellRed",2,1],
			["UK3CB_BAF_SmokeShellBlue",2,1],
			["UK3CB_BAF_SmokeShellPurple",2,1],
			["HandGrenade",2,1],
			["UK3CB_BAF_Kite",1],
			["UK3CB_BAF_HMNVS",1]
		]
	],
	(selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F","UK3CB_BAF_H_Mk7_Net_A","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D"]),
	nil,
	[],
	["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]
];

_kitMED =
[
	[
		"UK3CB_BAF_L85A2_RIS","UK3CB_BAF_SFFH","UK3CB_BAF_LLM_IR_Black","UK3CB_BAF_SpecterLDS_Dot",
		[],
		[],
		""
	],
	[],
	[],
	[
		(selectRandom ["UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"]),
		[
			["ACE_elasticBandage",5],
			["ACE_fieldDressing",5],
			["ACE_packingBandage",5],
			["ACE_quikclot",5],
			["ACE_tourniquet",5],
			["ACE_morphine",1],
			["ACE_epinephrine",1],
			["ACE_CableTie",2],
			["ACRE_PRC343",1]
		]
	],
	[
		(selectRandom ["UK3CB_BAF_V_Osprey_Rifleman_A","UK3CB_BAF_V_Osprey_Rifleman_C","UK3CB_BAF_V_Osprey_Rifleman_D","UK3CB_BAF_V_Osprey_Rifleman_E","UK3CB_BAF_V_Osprey_Rifleman_F"]),
		[
			["UK3CB_BAF_556_30Rnd",6,30],
			["UK3CB_BAF_556_30Rnd_T",2,30],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellGreen",2,1],
			["HandGrenade",2,1]
		]
	],
	[
		"UK3CB_BAF_B_Kitbag_MTP",
		[
			["UK3CB_BAF_556_30Rnd",4,30],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellOrange",2,1],
			["UK3CB_BAF_SmokeShellRed",2,1],
			["UK3CB_BAF_SmokeShellBlue",2,1],
			["UK3CB_BAF_SmokeShellPurple",2,1],
			["HandGrenade",2,1],
			["ACE_elasticBandage",15],
			["ACE_fieldDressing",15],
			["ACE_packingBandage",15],
			["ACE_quikclot",15],
			["ACE_tourniquet",10],
			["ACE_morphine",15],
			["ACE_epinephrine",15],
			["ACE_salineIV_500", 5],
			["UK3CB_BAF_Kite",1],
			["UK3CB_BAF_HMNVS",1]
		]
	],
	(selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F","UK3CB_BAF_H_Mk7_Net_A","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D"]),
	nil,
	[],
	["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]
];

_kitMG =
[
	[
		"UK3CB_BAF_L7A2","","","",
		[],
		[],
		""
	],
	[],
	[],
	[
		(selectRandom ["UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"]),
		[
			["ACE_elasticBandage",5],
			["ACE_fieldDressing",5],
			["ACE_packingBandage",5],
			["ACE_quikclot",5],
			["ACE_tourniquet",5],
			["ACE_morphine",1],
			["ACE_epinephrine",1],
			["ACE_CableTie",2],
			["ACRE_PRC343",1]
		]
	],
	[
		"UK3CB_BAF_V_Osprey_MG_A",
		[
			["UK3CB_BAF_762_100Rnd",2,100],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellGreen",2,1],
			["HandGrenade",2,1]
		]
	],
	[
		"UK3CB_BAF_B_Kitbag_MTP",
		[
			["UK3CB_BAF_762_100Rnd",3,100],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellOrange",2,1],
			["UK3CB_BAF_SmokeShellRed",2,1],
			["UK3CB_BAF_SmokeShellBlue",2,1],
			["UK3CB_BAF_SmokeShellPurple",2,1],
			["HandGrenade",2,1],
			["UK3CB_BAF_Kite",1],
			["UK3CB_BAF_HMNVS",1]
		]
	],
	(selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F","UK3CB_BAF_H_Mk7_Net_A","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D"]),
	nil,
	[],
	["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]
];


_kitMARK =
[
	[
		"UK3CB_BAF_L129A1","","UK3CB_BAF_LLM_IR_Black","UK3CB_BAF_TA648_308",
		[],
		[],
		"UK3CB_underbarrel_acc_fgrip_bipod"
	],
	[
		"UK3CB_BAF_AT4_CS_AT_Launcher","","","",[],[],""
	],
	[],
	[
		(selectRandom ["UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"]),
		[
			["ACE_elasticBandage",5],
			["ACE_fieldDressing",5],
			["ACE_packingBandage",5],
			["ACE_quikclot",5],
			["ACE_tourniquet",5],
			["ACE_morphine",1],
			["ACE_epinephrine",1],
			["ACE_CableTie",2],
			["ACRE_PRC343",1]
		]
	],
	[
		"UK3CB_BAF_V_Osprey_Marksman_A",
		[
			["UK3CB_BAF_762_L42A1_20Rnd",6,20],
			["UK3CB_BAF_762_L42A1_20Rnd_T",4,20],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellGreen",2,1],
			["HandGrenade",2,1]
		]
	],
	[
		"UK3CB_BAF_B_Kitbag_MTP",
		[
			["UK3CB_BAF_762_L42A1_20Rnd",4,20],
			["UK3CB_BAF_762_L42A1_20Rnd_T",4,20],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellOrange",2,1],
			["UK3CB_BAF_SmokeShellRed",2,1],
			["UK3CB_BAF_SmokeShellBlue",2,1],
			["UK3CB_BAF_SmokeShellPurple",2,1],
			["HandGrenade",2,1],
			["UK3CB_BAF_Kite",1],
			["UK3CB_BAF_HMNVS",1]
		]
	],
	(selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F","UK3CB_BAF_H_Mk7_Net_A","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D"]),
	nil,
	[],
	["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]
];

_kitPC =
[
	[
		"UK3CB_BAF_L85A2_UGL",
		"UK3CB_BAF_SFFH","UK3CB_BAF_LLM_IR_Black","UK3CB_BAF_SpecterLDS_Dot",
		[],
		[],
		""
	],
	[
		"UK3CB_BAF_AT4_CS_AT_Launcher","","","",[],[],""
	],
	[],
	[
		(selectRandom ["UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"]),
		[
			["ACE_elasticBandage",5],
			["ACE_fieldDressing",5],
			["ACE_packingBandage",5],
			["ACE_quikclot",5],
			["ACE_tourniquet",5],
			["ACE_morphine",1],
			["ACE_epinephrine",1],
			["ACE_CableTie",2],
			["ACE_MapTools",1],
			["ACRE_PRC343",1]
		]
	],
	[
		(selectRandom ["UK3CB_BAF_V_Osprey_Grenadier_A","UK3CB_BAF_V_Osprey_Grenadier_B"]),
		[
			["UK3CB_BAF_556_30Rnd",6,30],
			["UK3CB_BAF_556_30Rnd_T",2,30],
			["1Rnd_HE_Grenade_shell",8,1],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellGreen",2,1],
			["HandGrenade",2,1],
			["ACE_DAGR",1]
		]
	],
	[
		"UK3CB_BAF_B_Kitbag_MTP",
		[
			["UK3CB_BAF_556_30Rnd",4,30],
			["1Rnd_HE_Grenade_shell",8,1],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellOrange",2,1],
			["UK3CB_BAF_SmokeShellRed",2,1],
			["UK3CB_BAF_SmokeShellBlue",2,1],
			["UK3CB_BAF_SmokeShellPurple",2,1],
			["HandGrenade",2,1],
			["UK3CB_BAF_Kite",1],
			["UK3CB_BAF_HMNVS",1]
		]
	],
	(selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F","UK3CB_BAF_H_Mk7_Net_A","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D"]),
	nil,
	[],
	["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];

_kitRIF =
[
	[
		"UK3CB_BAF_L85A2_RIS","UK3CB_BAF_SFFH","UK3CB_BAF_LLM_IR_Black","UK3CB_BAF_SpecterLDS_Dot",
		[],
		[],
		""
	],
	[
		"UK3CB_BAF_NLAW_Launcher","","","",[],[],""
	],
	[],
	[
		(selectRandom ["UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"]),
		[
			["ACE_elasticBandage",5],
			["ACE_fieldDressing",5],
			["ACE_packingBandage",5],
			["ACE_quikclot",5],
			["ACE_tourniquet",5],
			["ACE_morphine",1],
			["ACE_epinephrine",1],
			["ACRE_PRC343",1]
		]
	],
	[
		(selectRandom ["UK3CB_BAF_V_Osprey_Rifleman_A","UK3CB_BAF_V_Osprey_Rifleman_C","UK3CB_BAF_V_Osprey_Rifleman_D","UK3CB_BAF_V_Osprey_Rifleman_E","UK3CB_BAF_V_Osprey_Rifleman_F"]),
		[
			["UK3CB_BAF_556_30Rnd",6,30],
			["UK3CB_BAF_556_30Rnd_T",2,30],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellGreen",2,1],
			["HandGrenade",2,1]
		]
	],
	[
		"UK3CB_BAF_B_Kitbag_MTP",
		[
			["UK3CB_BAF_556_30Rnd",4,30],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellOrange",2,1],
			["UK3CB_BAF_SmokeShellRed",2,1],
			["UK3CB_BAF_SmokeShellBlue",2,1],
			["UK3CB_BAF_SmokeShellPurple",2,1],
			["HandGrenade",2,1],
			["UK3CB_BAF_Kite",1],
			["UK3CB_BAF_HMNVS",1]
		]
	],
	(selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F","UK3CB_BAF_H_Mk7_Net_A","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D"]),
	nil,
	[],
	["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]
];

_kitS2IC =
[
	[
		"UK3CB_BAF_L85A2_UGL",
		"UK3CB_BAF_SFFH","UK3CB_BAF_LLM_IR_Black","UK3CB_BAF_SpecterLDS_Dot",
		[],
		[],
		""
	],
	[
		"UK3CB_BAF_AT4_CS_AT_Launcher","","","",[],[],""
	],
	[],
	[
		(selectRandom ["UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"]),
		[
			["ACE_elasticBandage",5],
			["ACE_fieldDressing",5],
			["ACE_packingBandage",5],
			["ACE_quikclot",5],
			["ACE_tourniquet",5],
			["ACE_morphine",1],
			["ACE_epinephrine",1],
			["ACE_CableTie",2],
			["ACE_MapTools",1],
			["ACRE_PRC343",1]
		]
	],
	[
		(selectRandom ["UK3CB_BAF_V_Osprey_SL_A","UK3CB_BAF_V_Osprey_SL_B"]),
		[
			["UK3CB_BAF_556_30Rnd",6,30],
			["UK3CB_BAF_556_30Rnd_T",2,30],
			["1Rnd_HE_Grenade_shell",8,1],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellGreen",2,1],
			["HandGrenade",2,1],
			["ACE_DAGR",1]
		]
	],
	[
		"UK3CB_BAF_B_Kitbag_MTP",
		[
			["UK3CB_BAF_556_30Rnd",4,30],
			["1Rnd_HE_Grenade_shell",8,1],
			["UK3CB_BAF_SmokeShell",2,1],
			["UK3CB_BAF_SmokeShellOrange",2,1],
			["UK3CB_BAF_SmokeShellRed",2,1],
			["UK3CB_BAF_SmokeShellBlue",2,1],
			["UK3CB_BAF_SmokeShellPurple",2,1],
			["HandGrenade",2,1],
			["UK3CB_BAF_Kite",1],
			["UK3CB_BAF_HMNVS",1]
		]
	],
	(selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F","UK3CB_BAF_H_Mk7_Net_A","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D"]),
	nil,
	[],
	["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]
];

if (player getVariable ["playerPC", false]) then { player setUnitLoadout [_kitPC, true]; };
if (player getVariable ["playerPS", false]) then { player setUnitLoadout [_kitPC, true]; };
if (player getVariable ["playerMED", false]) then { player setUnitLoadout [_kitMED, true]; };
if (player getVariable ["playerSC", false]) then { player setUnitLoadout [_kitPC, true]; };
if (player getVariable ["playerRIF", false]) then { player setUnitLoadout [_kitRIF, true]; };
if (player getVariable ["playerGREN", false]) then { player setUnitLoadout [_kitGREN, true]; };
if (player getVariable ["playerAR", false]) then { player setUnitLoadout [_kitAR, true]; };
if (player getVariable ["playerS2IC", false]) then { player setUnitLoadout [_kitS2IC, true]; };
if (player getVariable ["playerMG", false]) then { player setUnitLoadout [_kitMG, true]; };
if (player getVariable ["playerMARK", false]) then { player setUnitLoadout [_kitMARK, true]; };

[player] call ace_hearing_fnc_putInEarplugs;
[player, (currentWeapon player), (currentMuzzle player)] call ace_safemode_fnc_lockSafety;
[player] call ace_weaponselect_fnc_selectNextGrenade;
["", 0, ace_player, 0] call ace_common_fnc_displayTextStructured;

//player playMoveNow "AmovPknlMstpSlowWrflDnon";
//player action ["SwitchWeapon", player, player, 100];
