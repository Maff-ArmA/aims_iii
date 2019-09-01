
//	onEachFrame { hintSilent str currentCommand dave };

player addEventHandler ["HandleRating", {0}];

player addEventHandler ["GetInMan", { params ["_unit", "_role", "_vehicle", "_turret"]; if (_vehicle isKindOf "AIR") then { setViewDistance 2000; setObjectViewDistance [2000,100]; setTerrainGrid 12.5; } else { setViewDistance 1500; setObjectViewDistance [1500,100]; setTerrainGrid 12.5; }; } ];

player addEventHandler ["GetOutMan", { params ["_unit", "_role", "_vehicle", "_turret"]; setViewDistance 1000; setObjectViewDistance [1000,100]; setTerrainGrid 12.5; } ];

player addEventHandler ["SeatSwitchedMan", { params ["_unit1", "_unit2", "_vehicle"]; if (assignedVehicleRole _unit1 find "Turret" > -1) then { setViewDistance 1500; setObjectViewDistance [1500,100]; setTerrainGrid 12.5; }; } ];


/* BASIC: Check player is in "cover" then adjust "camouflageCoef". */
player addEventHandler ["AnimChanged", { params ["_unit", "_anim"]; _stance = stance _unit; _min = 0.2; _mid = 0.6; _max = 1; _cam = _unit getUnitTrait "camouflageCoef"; if (_stance isEqualTo "PRONE" && {_cam != _min}) then { _unit setUnitTrait ["camouflageCoef", _min]; }; if (_stance isEqualTo "CROUCH" && {_cam != _mid}) then { _unit setUnitTrait ["camouflageCoef", _mid]; }; if (_stance isEqualTo "STAND" && {_cam != _max}) then { _unit setUnitTrait ["camouflageCoef", _max]; }; } ];




player addEventHandler ["Fired",
	{
		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

		//{ _x suppressFor 60; } forEach (allunits select {_x knowsAbout _unit > 0});

		_nrUnits = allUnits select { _x distance2D _unit <= 600 };
		{
			_x reveal [_unit, ((_x knowsAbout _unit) + 1) min 4];
			if (_x knowsAbout _unit >= 4) then
			{
				_x suppressFor 60;
			};
		} forEach _nrUnits;

		
		
		
//		_nrGrps = allGroups select { (leader _x distance2D _unit) < 800 };
//		{

//			_kA = _x knowsAbout _unit;
//			if (_kA < 4) then { _x reveal [_unit, (_kA + 1)]; };
/*
			COMMENT "ABANDON IDEA - TOO MUCH SHIT GOING ON EVERY ROUND SHOT!";
			if (_kA >= 4) then
			{
				_u = _x;
				{
					if ([objNull, "VIEW"] checkVisibility [eyePos _u, eyePos _unit] > 0) then
					{
						_u doSuppressiveFire (ATLToASL (_unit getHideFrom _u));
					};
				} forEach units _x;
			};
*/
//		} forEach _nrGrps;
/*
		_nrUnits = allUnits select { _x distance2D _unit < 800 };
		{
			_x reveal [_unit, ((_x knowsAbout _unit) + 1) min 4];
			if (_x knowsAbout _unit >= 3.5) then
			{
				_x doSuppressiveFire (ATLToASL (_unit getHideFrom _x));
			};
		} forEach _nrUnits;
*/
	}
];

/*
player addEventHandler ["Fired",
	{
		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

		_nrGrps = allGroups select { (leader _x distance _unit) <= 600 };
		//_nrUnits = allUnits select { _x distance _unit < 1000 };

		{
			_kA = _x knowsAbout _unit;
			if (_kA < 4) then { _x reveal [_unit, (_kA + 1)]; };
		} forEach _nrGrps;
	}
];
*/


/*
player addEventHandler ["Fired",
{
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

	//_nrGrps = allGroups select { (leader _x distance _unit) <= 1000 };
	_nrGrps = _unit nearEntities ["Man", 1000];

	_kA = _x knowsAbout _unit;

	if (_kA < 4) then
	{
		_x reveal [_unit, (_kA + 2)];
	};

	if (!(terrainIntersectASL [getPosASL _unit, getPosASL leader _x])) then
	{

	};

	//_flankPos = _unit modelToWorld (selectRandom [ [-300,0,0],[300,0,0] ];



	if (ARO_distanceClose) then { _x doMove (getPosASL _unit); };
	if (ARO_distanceMedium) then { _x doSuppressiveFire (getPosASL _unit); };
	if (ARO_distanceFar) then {};

	{
		_cansee = [_x, "VIEW"] checkVisibility [eyePos _x, eyePos _unit];
		if (_cansee > 0.2) then
		{
			_pos = eyePos _unit;
			_pos set [2, ((_pos select 2) + 0.5)];

			//_x forceSpeed 0;
			_x setUnitPos "AUTO";

			_x doSuppressiveFire _pos;
		};
	} forEach _nrGrps;

	/*
	//_nrUnits = allUnits select { _x distance _unit < 1000 };

	//{
	//	_kv = _x knowsAbout _unit;
	//	_x reveal [_unit, (_kv + 2)];

	//	_x doSuppressiveFire (eyePos _unit);
	//} forEach _nrUnits;
	*/
//} ];


