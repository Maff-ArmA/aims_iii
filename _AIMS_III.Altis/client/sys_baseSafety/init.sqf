//execVM "client\baseSafety\forceWalk.sqf";

/*
	Helps stop players being players while waiting to go out on patrol.
	Inspired by the lunacy I've seen on public servers and operations.

	It is better to have these in place than not.


	1.	Don't point weapons at other players.	//	WTF?!
	2.	Don't run around base like a lunatic.	//	Keep crates and vehicles close to avoid delays.
	3.	Don't shoot or throw grenades.			//	Handled in initEvents.

	Additionally...
	Keeping player groups far from eachother and as close as possible to their own vehicles and supplies will cut down on (near) accidents.

*/

ARO_baseAttack = false;


ARO_fnc_removeThrowables = { _grenades = []; { _grenades append getArray(configFile >> "CfgWeapons" >> "Throw" >> _x >> "magazines"); } forEach getArray(configFile >> "CfgWeapons" >> "Throw" >> "muzzles"); {_this removeMagazines _x} forEach _grenades; };

/* STOP PLAYERS ACCIDENTALLY THROWING GRENADES OR SHOOTING WHILE IN BASE. */
["ace_firedPlayer", { params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"]; if ((_unit inArea ARO_safeZone) and {!(ARO_baseAttack)}) then { deleteVehicle _projectile; if (_weapon isEqualTo "Throw") then { titleText ["<t size='2'>DO NOT THROW GRENADES INSIDE BASE!<br />For safety reasons, all grenades have been removed.</t>", "PLAIN", 1.5, true, true]; player spawn ARO_fnc_removeThrowables; } else { titleText ["<t size='2'>DO NOT SHOOT INSIDE BASE!<br />Your weapon system has been put on safe.</t>", "PLAIN", 1.5, true, true]; [_unit,_weapon,_muzzle] call ace_safemode_fnc_lockSafety; }; }; } ] call CBA_fnc_addEventHandler;

["ace_firedPlayerVehicle", { params ["_vehicle", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile"]; if ((_vehicle inArea ARO_safeZone) and {!(ARO_baseAttack)}) then { deleteVehicle _projectile; titleText ["<t size='2'>DO NOT OPERATE VEHICLE WEAPONS INSIDE BASE!<br />The weapon system has been put on safe.</t>", "PLAIN", 1.5, true, true]; _vehicle action ["SwitchWeapon", _vehicle, player, 0]; }; } ] call CBA_fnc_addEventHandler;




/* Detect if throw key is G [34] and warn players to change it! */
[] spawn
{
	if (actionKeys "throw" isEqualTo [34]) then
	{
		hint parseText "WARNING<br/>Default THROW key detected.<br/>You are required to change this keybind.<br/>Please change this now.";
	};
};


/*
	FORCE PLAYERS TO WALK IN BASE (IF NOT UNDER ATTACK).
	BUG: Players can run around after they have place down dems inside base.
*/
//[] spawn { while {true} do { waitUntil {(player inArea ARO_safeZone) and {!(ARO_baseAttack)}}; player forceWalk true; player allowSprint false; waitUntil {!(player inArea ARO_safeZone) or {(ARO_baseAttack)}}; player forceWalk false; player allowSprint true; waitUntil {!(ARO_baseAttack)}; }; };


/* KEEP PLAYERS WEAPON LOWERED WHILE IN BASE! */
/* FIRES EVERY LOOP WHEN IN VEHICLE AND INAREA! */

/*
[] spawn
{
	while {true} do
	{
		if ((player inArea ARO_safeZone) and {!(ARO_baseAttack)}) then
		{
			if ((isNull objectParent player) and (stance player != "PRONE") and {!(weaponLowered player)}) then
			{
				hint "Keep weapons lowered while in base.";
				player action ["WEAPONONBACK", player];	//	Lower rifle.
				//player action ["SwitchWeapon", player, player, 100];	//	Actual WEAPONONBACK!
			};
		};
		sleep 0.5;
	};
};
*/

