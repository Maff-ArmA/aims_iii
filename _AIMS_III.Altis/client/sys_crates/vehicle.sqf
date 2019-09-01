if (isNil "ARO_vehCrate") exitWith { systemChat "ATTENTION: ARO_vehCrate does not exist!"; };

_mag =
	[
		["UK3CB_BAF_127_100Rnd", 5],
		["UK3CB_BAF_762_200Rnd_T", 5]
	];

_wep = [];

_itm = [];

ARO_vehCrate addEventHandler ["HandleDamage", {0}];
ARO_vehCrate allowDamage false;
[ARO_vehCrate, -1] call ace_cargo_fnc_setSize;	//	Disable loading into vehicles?
ARO_vehCrate setObjectTextureGlobal [0, "client\assets\vehCrate.paa"];

while {true} do
{
	waitUntil { sleep 5; alive player && {(player distance ARO_vehCrate) < 250} };

	clearBackpackCargo ARO_vehCrate;
	clearMagazineCargo ARO_vehCrate;
	clearWeaponCargo ARO_vehCrate;
	clearItemCargo ARO_vehCrate;

	{ ARO_vehCrate addMagazineCargo [_x select 0, _x select 1] } foreach _mag;
	{ ARO_vehCrate addWeaponCargo [_x select 0, _x select 1] } foreach _wep;
	{ ARO_vehCrate addItemCargo [_x select 0, _x select 1] } forEach _itm;

    waitUntil { sleep 5; !alive player or (player distance ARO_vehCrate) > 250 };
};