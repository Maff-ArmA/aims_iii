//Add Vallon.

if (isNil "ARO_mainCrate") exitWith { systemChat "ATTENTION: ARO_mainCrate does not exist!"; };

_mag = []; _wep = []; _itm = [];

_mag =
	[
		["HandGrenade", 5],
		["ACE_M84", 5],
		["UK3CB_BAF_SmokeShell", 5],
		["UK3CB_BAF_SmokeShellBlue", 5],
		["UK3CB_BAF_SmokeShellGreen", 5],
		["UK3CB_BAF_SmokeShellOrange", 5],
		["UK3CB_BAF_SmokeShellPurple", 5],
		["UK3CB_BAF_SmokeShellRed", 5],
		["UK3CB_BAF_127_100Rnd", 10],
		["UK3CB_BAF_762_200Rnd_T", 10]
	];

_wep =
	[
		["UK3CB_BAF_AT4_CS_AT_Launcher", 5],
		["UK3CB_BAF_NLAW_Launcher", 5],
		["UK3CB_BAF_Javelin_Slung_Tube", 5]
	];

_itm =
	[
		["ACE_elasticBandage", 20],
		["ACE_fieldDressing", 20],
		["ACE_packingBandage", 20],
		["ACE_quikclot", 20],
		["ACE_tourniquet", 10],
		["ACE_epinephrine", 10],
		["ACE_morphine", 10],
		["ACE_salineIV_500", 5],
		["ACE_DefusalKit", 1],
		["DemoCharge_Remote_Mag", 5],
		["ACE_Clacker", 1],
		["ACE_CableTie", 5],
		["ACE_wirecutter", 1],
		["Toolkit", 1],
		["UK3CB_BAF_Javelin_CLU", 1]
	];

/*
	if (isFSG) then { ADD JAVS AND ALL THAT GOOD SHIT! };
*/

if (player getVariable ["playerPC", false]) then
{
	_mag append
	[
		["UK3CB_BAF_556_30Rnd", 25],
		["UK3CB_BAF_556_30Rnd_T", 25]
	];
};

if (player getVariable ["playerPS", false]) then
{
	_mag append
	[
		["UK3CB_BAF_556_30Rnd", 25],
		["UK3CB_BAF_556_30Rnd_T", 25]
	];
};

if (player getVariable ["playerMED", false]) then
{
	_mag append
	[
		["UK3CB_BAF_556_30Rnd", 25]
	];

	_itm append
	[
		["ACE_elasticBandage", 30],
		["ACE_fieldDressing", 30],
		["ACE_packingBandage", 30],
		["ACE_quikclot", 30],
		["ACE_tourniquet", 40],
		["ACE_epinephrine", 40],
		["ACE_morphine", 40],
		["ACE_salineIV_500", 30],
		["ACE_personalAidKit", 100]
	];
};

if (player getVariable ["playerSC", false]) then
{
	_mag append
	[
		["UK3CB_BAF_556_30Rnd", 25],
		["UK3CB_BAF_556_30Rnd_T", 25],
		["1Rnd_HE_Grenade_shell", 15]
	];
};

if (player getVariable ["playerRIF", false]) then
{
	_mag append
	[
		["UK3CB_BAF_556_30Rnd", 25],
		["UK3CB_BAF_556_30Rnd_T", 5],
		["UK3CB_BAF_12G_Slugs", 10],
		["UK3CB_BAF_12G_Pellets", 15]
	];

 	_wep append
	[
		["UK3CB_BAF_L128A1", 1],
		["ACE_VMH3", 1]
	];
};

if (player getVariable ["playerGREN", false]) then
{
	_mag append
	[
		["UK3CB_BAF_556_30Rnd", 25],
		["UK3CB_BAF_556_30Rnd_T", 5],
		["1Rnd_HE_Grenade_shell", 15],
		["UK3CB_BAF_UGL_FlareWhite_F", 15],
		["UK3CB_BAF_UGL_FlareCIR_F", 15]
	];
};

if (player getVariable ["playerAR", false]) then
{
	_mag append
	[
		["UK3CB_BAF_556_200Rnd", 15]
	];
};

if (player getVariable ["playerS2IC", false]) then
{
	_mag append
	[
		["UK3CB_BAF_556_30Rnd", 25],
		["UK3CB_BAF_556_30Rnd_T", 15],
		["1Rnd_HE_Grenade_shell", 15]
	];
};

if (player getVariable ["playerMG", false]) then
{
	_mag append
	[
		["UK3CB_BAF_762_100Rnd", 15]
	];
};

if (player getVariable ["playerMARK", false]) then
{
	_mag append
	[
		["UK3CB_BAF_762_L42A1_20Rnd", 25],
		["UK3CB_BAF_762_L42A1_20Rnd_T", 15]
	];
};


ARO_mainCrate addEventHandler ["HandleDamage", {0}];
ARO_mainCrate allowDamage false;
[ARO_mainCrate, -1] call ace_cargo_fnc_setSize;	//	Disable loading into vehicles?
ARO_mainCrate setObjectTextureGlobal [0, "client\assets\mainCrate.paa"];

while {true} do
{
	waitUntil { sleep 5; alive player && {(player distance ARO_mainCrate) < 250} };

	clearBackpackCargo ARO_mainCrate;
	clearMagazineCargo ARO_mainCrate;
	clearWeaponCargo ARO_mainCrate;
	clearItemCargo ARO_mainCrate;

	{ ARO_mainCrate addMagazineCargo [_x select 0, _x select 1] } foreach _mag;
	{ ARO_mainCrate addWeaponCargo [_x select 0, _x select 1] } foreach _wep;
	{ ARO_mainCrate addItemCargo [_x select 0, _x select 1] } forEach _itm;

    waitUntil { sleep 5; !alive player or (player distance ARO_mainCrate) > 250 };
};