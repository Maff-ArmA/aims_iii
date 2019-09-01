
/*
	Changelog:

		>	All tags changed from AIMS_ to ARO_.
			Because having one less character is more optimised... ARGHAHAHA!

		-	ARO_checkCap optimised.
			"ARO_enemySide countSide allGroups" is ~5x faster than "allGroups select {side _x == AIMS_enemySide}"

		-	Removed vehicle command from allPlayers checks.
			It isn't needed... allPlayers returns units in vehicles already.

		-	ARO_fnc_huntWP.
			addWaypoint: Since Arma 3 v1.90, -1 may be used for exact waypoint placement.
			No need to use "setWaypointPosition workaround" now.

		-	Added EH's to stop:
			a)	Enemy running out of ammo.
			b)	Players looting dead enemies.

		-	Enabled enemy suppression.
			Players can suppress the enemy, so section attacks and counter ambush drills are no longer so... Deathly.

		-	xxx


	Snippets:

		vehicle player setPos ([ [[[9000,17000,0], 3000]], ["water"], { {[objNull, "VIEW"] checkVisibility [eyePos _x, _this] < 0.1} count allUnits isEqualTo count allUnits } ] call BIS_fnc_randomPos);

		(get3DENselected "trigger" select 0) call BIS_fnc_getArea;

		[objNull, player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
*/


ARO_DEBUG = true;
ARO_AO = [[9000,17000,0],3000,3000,0,false,-1];	// (get3DENselected "trigger" select 0) call BIS_fnc_getArea;


//	PLAYERS
comment "ONLY PLAYERS INSIDE ARO_AO SHOULD BE CONSIDERED PLAYERS!";
#define ARO_players (allPlayers - entities "HeadlessClient_F") select { alive _x && { _x inArea ARO_AO } }
#define ARO_playersFound count (ARO_players) > 0
#define ARO_randomPlayer selectRandom (ARO_players)


//	POSITIONS
/* ISSUE: randomPos sometimes returns positions inside rocks OR too near a player. */
#define ARO_randomPos [ [[ARO_randomPlayer, ARO_spawnDist select 1]], ["water"], { ARO_isHiddenPos } ] call BIS_fnc_randomPos
#define ARO_isHiddenPos {[objNull, "VIEW"] checkVisibility [eyePos _x, _this] < 0.1} count allPlayers isEqualTo count allPlayers
//#define ARO_isEmptyPos _this findEmptyPosition [0,0,"Land_VR_Block_02_F"];
#define ARO_isEmptyPos !(_this findEmptyPosition [0,0,"Land_VR_Block_02_F"] isEqualTo []);


//	ENEMY
#define ARO_enemySide Independent
//#define ARO_enemySide east
#define ARO_groupTypes ["HAF_InfSquad",0.25,"HAF_InfSquad_Weapons",0.25,"HAF_InfTeam",1,"HAF_InfTeam_AT",1,"HAF_InfTeam_AA",1,"HAF_InfSentry",0.5]
#define ARO_randomGroup (selectRandomWeighted ARO_groupTypes)
#define ARO_configGroup (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> ARO_randomGroup)
#define ARO_spawnGroup [ARO_randomPos, ARO_enemySide, ARO_configGroup] call BIS_fnc_spawnGroup;



ARO_fnc_spawnRoutine =
{
	_pos = ARO_randomPos;
	_tgt = [_pos] call ARO_fnc_nearestPlayer;
	_dir = _pos getDir _tgt;
	_prx = createVehicle ["Land_HelipadEmpty_F", _pos, [], 0, "NONE"];
	_prx setDir _dir;

	_set = ["O_HeavyGunner_F","O_Sharpshooter_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AR_F","O_Soldier_AT_F","O_Soldier_A_F","O_Soldier_F","O_Soldier_GL_F","O_Soldier_LAT_F","O_Soldier_SL_F","O_Soldier_TL_F","O_medic_F","O_soldier_M_F"];

	_frm = [[0,0,0],[5,0,0],[-5,0,0],[10,0,0],[-10,0,0],[15,0,0],[-15,0,0],[20,0,0],[-20,0,0],[25,0,0]];
	_cnt = [2,10] call BIS_fnc_randomInt;
	_frm resize _cnt;
	
	_grp = createGroup [east, true];
	{
		_opf = _grp createUnit [selectRandom _set, [0,0,0], [], 0, "NONE"];
		_setPos = (_prx modelToWorldVisual _x);
		_setPos set [2,0];
		
		_opf setPos _setPos;
		//_opf setPos (_prx modelToWorldVisual _x);
		_opf setDir _dir;
	} forEach _frm;

	[_grp] spawn ARO_fnc_patrol;
	[_grp] spawn ARO_fnc_despawnCheck;

	deleteVehicle _prx;
};



//#define ARO_setCowardice if (25 call ARO_fnc_chance) then { _this allowFleeing 1; } else { _this allowFleeing 0; };
#define ARO_STFU [_x, "NoVoice"] remoteExec ["setSpeaker", 0]
#define ARO_taskGroup if (0 call ARO_fnc_chance) then { [_grp] spawn ARO_fnc_huntWP; } else { [_grp] spawn ARO_fnc_patrol; };
#define ARO_checkCap (ARO_enemySide countSide allGroups) < ARO_groupLimit


//	EVENTS
ARO_fnc_addKilledEH = { /* Stop players looting dead enemy. */ _this addEventHandler ["Killed", { params ["_unit", "_killer", "_instigator", "_useEffects"]; {_unit setAmmo [_x, 0]} forEach (weapons _unit); {_unit removeMagazine _x} forEach (magazines _unit); removeAllItems _unit; removeAllAssignedItems _unit; } ]; };
ARO_fnc_addReloadedEH = { /* Stop enemy from running out of ammo. */ _this addEventHandler ["Reloaded", { params ["_unit", "_weapon", "_muzzle", "_newMag", "_oldMag"]; _unit addMagazine (_oldMag select 0); } ]; };


ARO_groupLimit = 2;	//	count (ARO_players) ?

ARO_sleepTime = [(1*60), (3*60), (2*60)];
ARO_spawnDist = [200, 500, 800];

ARO_fnc_chance = {(random(100) < _this)};

//	Need to do checkVisibility too!
ARO_fnc_despawnCheck = { params ["_grp"]; waitUntil {sleep 5; {(_x distance2D leader _grp) < (ARO_spawnDist select 2)} count allPlayers == 0}; { deleteVehicle _x } forEach (units _grp); deleteGroup _grp; };

ARO_fnc_removeNVG = { if ((hmd _x) != "") then { _x unassignItem (hmd _x); _x removeItem (hmd _x); }; };

ARO_fnc_addWepFL = { _cmp = (primaryWeapon _x) call BIS_fnc_compatibleItems; if ("acc_flashlight" in _cmp && {15 call ARO_fnc_chance}) then { _x addPrimaryWeaponItem "acc_flashlight"; _x enableGunLights "forceOn"; }; };

ARO_fnc_lerp = { params [["_a", 0.0, [0.0]], ["_b", 0.0, [0.0]], ["_alpha", 0.0, [0.0]]]; _a + _alpha * (_b - _a); };

//ARO_fnc_nearestPlayer = { params ["_grp"]; _alive = allPlayers select { alive _x && {_x inArea ARO_AO} }; _nrstPlyr = _alive apply { [_x distance _grp, _x] }; _nrstPlyr sort true; _nrstPlyr select 0 select 1 };
ARO_fnc_nearestPlayer = { /* Previous function errors if no player alive or inArea. If _grp ends up going to player base... So be it. */ params ["_grp"]; _nrstPlyr = allPlayers apply { [_x distance _grp, _x] }; _nrstPlyr sort true; _nrstPlyr select 0 select 1 };

/* PATROL & HUNT ERRORS IF NO PLAYERS IN AO WHEN ROUTINE RUNS/NEW WP CREATION ATTEMPT! */
ARO_fnc_patrol = { params ["_grp"]; waitUntil {sleep 1; !(leader _grp isEqualTo objNull)}; while {(count (waypoints _grp)) > 1} do { deleteWaypoint ((waypoints _grp) select 1); sleep 0.01; }; _nrstPlyr = (leader _grp) call ARO_fnc_nearestPlayer; private ["_wp"]; _wp = _grp addWaypoint [_nrstPlyr, (ARO_spawnDist select 1)]; _wp setWaypointType "MOVE"; _wp setWaypointBehaviour "SAFE"; _wp setWaypointCombatMode "RED"; _wp setWaypointSpeed "LIMITED"; _wp setWaypointFormation "COLUMN"; _wp setWaypointCompletionRadius 100; _wp setWaypointStatements ["true", "group this spawn ARO_fnc_patrol;"]; };

ARO_fnc_huntWP = { params ["_grp"]; while {leader _grp isEqualTo objNull;} do {sleep 1;}; while {(count (waypoints _grp)) > 1} do { deleteWaypoint ((waypoints _grp) select 1); sleep 0.01; }; _nrstPlyr = (leader _grp) call ARO_fnc_nearestPlayer; private ["_wp"]; _wp = _grp addWaypoint [(getPosASL _nrstPlyr), -1]; _wp setWaypointType "MOVE"; _wp setWaypointBehaviour "AWARE"; _wp setWaypointCombatMode "RED"; _wp setWaypointSpeed "NORMAL"; _wp setWaypointFormation "LINE"; _wp setWaypointStatements ["true", "group this spawn ARO_fnc_huntWP;"]; };

#define ARO_doSuppressUnit _this setUnitPos "DOWN"; { _this disableAI _x; } count ["AUTOTARGET","MOVE","TARGET"]; if (ARO_DEBUG) then { _this setObjectTextureGlobal [0, "#(rgb,8,8,3)color(1,0,0,1)"]; };

#define ARO_unSuppressUnit _this setUnitPos "AUTO"; { _this enableAI _x; } count ["AUTOTARGET","MOVE","TARGET"]; if (ARO_DEBUG) then { _this setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0,1,0,1)"]; };

ARO_fnc_suppression = { /* SUPPRESS THE ENEMY. Enable & Encourage Section Attack or Break Contact drills. */ if (ARO_DEBUG) then { _this setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0,1,0,1)"]; }; while {alive _this} do { waitUntil {uiSleep 0.01; getSuppression _this > 0.5}; ARO_doSuppressUnit; waitUntil {uiSleep 1; getSuppression _this == 0}; ARO_unSuppressUnit; }; };



ARO_fnc_initGroup =
{
	_multi = (count (ARO_players))/2;
	//_skill = [0.2, 0.6, _multi] call ARO_fnc_lerp;
	//_skillAim = [0.05, 0.2, _multi] call ARO_fnc_lerp;

	_skillMin = 0.1;
	_skillMax = 0.7;
	_skillAimMin = 0.2;
	_skillAimMax = 0.6;
	_skill = [_skillMin, _skillMax, _multi] call ARO_fnc_lerp;
	_skillAim = [_skillAimMin, _skillAimMax, _multi] call ARO_fnc_lerp;


	{
		_x setSkill _skill;
		_x setskill ["spotDistance", _skill];
		_x setskill ["spotTime", _skill];
		_x setskill ["general", _skill];
		_x setskill ["aimingAccuracy", _skillAim];
		_x setskill ["aimingShake", _skillAim];
		_x setskill ["aimingSpeed", _skillAim];

		_x setskill ["courage", (random [0.3,0.2,0.4])];
		//_x setSpeedMode "LIMITED";
		_x allowFleeing 0;

		[_x, "NoVoice"] remoteExec ["setSpeaker", 0];

		if (!(hmd _x isEqualTo "")) then { _x unlinkItem (hmd _x); };
/*
		_cmp = (primaryWeapon _x) call BIS_fnc_compatibleItems;
		if ("acc_flashlight" in _cmp && {10 call ARO_fnc_chance}) then
		{
			_x addPrimaryWeaponItem "acc_flashlight";
			_x enableGunLights "forceOn";
		};
*/
		_x call ARO_fnc_addKilledEH;
		_x call ARO_fnc_addReloadedEH;
		//ARO_STFU;
		//ARO_fnc_removeNVG;
		//ARO_fnc_addWepFL;
		_x spawn ARO_fnc_suppression;
		
		//_x suppressFor 90;
	} forEach (units _this);
	_this deleteGroupWhenEmpty true;
};
