
//	onEachFrame { hintSilent str currentCommand dave };


#define vdMan 1000
#define vdVeh 1500
#define vdAir 2000

//	Set defaults to be sure.
setViewDistance vdMan;
setObjectViewDistance [vdMan,200];
setTerrainGrid 12.5;

player addEventHandler ["HandleRating", {0}];

player addEventHandler ["GetInMan", { params ["_unit", "_role", "_vehicle", "_turret"]; if (_vehicle isKindOf "AIR") then { setViewDistance vdAir; setObjectViewDistance [vdAir,200]; setTerrainGrid 12.5; } else { setViewDistance vdVeh; setObjectViewDistance [vdVeh,200]; setTerrainGrid 12.5; }; } ];

player addEventHandler ["GetOutMan", { params ["_unit", "_role", "_vehicle", "_turret"]; setViewDistance vdMan; setObjectViewDistance [vdMan,200]; setTerrainGrid 12.5; } ];

player addEventHandler ["SeatSwitchedMan", { params ["_unit1", "_unit2", "_vehicle"]; if (assignedVehicleRole _unit1 find "Turret" > -1) then { setViewDistance vdVeh; setObjectViewDistance [vdVeh,200]; setTerrainGrid 12.5; }; } ];

/* BASIC: Check player is in "cover" then adjust "camouflageCoef". */
player addEventHandler ["AnimChanged", { params ["_unit", "_anim"]; _stance = stance _unit; _min = 0.2; _mid = 0.6; _max = 1; _cam = _unit getUnitTrait "camouflageCoef"; if (_stance isEqualTo "PRONE" && {_cam != _min}) then { _unit setUnitTrait ["camouflageCoef", _min]; }; if (_stance isEqualTo "CROUCH" && {_cam != _mid}) then { _unit setUnitTrait ["camouflageCoef", _mid]; }; if (_stance isEqualTo "STAND" && {_cam != _max}) then { _unit setUnitTrait ["camouflageCoef", _max]; }; } ];


player addEventHandler ["Fired",
	{
		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

		{
			_x reveal [_unit, 4];
			//_x suppressFor 15;
			_x doSuppressiveFire (eyePos _unit);
		} forEach (_unit nearEntities 1000);
	}
];




/*
player addEventHandler ["Fired",
	{
		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
		
		if (_weapon isEqualTo "Put" OR {_weapon isEqualTo "Throw"}) exitwith {};
		
		private _lastShot = _unit getVariable ["ARO_lastShot", -60];
		
		if ((_lastShot + 15) < time) then 
		{
			_nrGrps = allGroups select { (leader _x distance2D _unit) < 800 };

			{
				_kA = _x knowsAbout _unit;
				if (_kA < 4) then { _x reveal [_unit, _kA + 0.5]; };
			} forEach _nrGrps;
			
			_unit setVariable ["ARO_lastShot", time];
		};
	}
];
*/

/*
player addEventHandler ["Fired",
	{
		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

		_nrGrps = allGroups select { (leader _x distance2D _unit) < 800 };

		{
			_kA = _x knowsAbout _unit;
			if (_kA < 4) then { _x reveal [_unit, (_kA + 0.5) min 4]; };
		} forEach _nrGrps;
	}
];
*/



/*
player addEventHandler ["Fired",
	{
		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

		{
			_x reveal [_unit, 4];
			//_x suppressFor 15;
			_x doSuppressiveFire (getPosASL _unit);
		} forEach (_unit nearEntities 1000);
	}
];
*/

/*
player addEventHandler ["Fired",
	{
		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

		_dst = 150;
		_con = ((leader _x distance2D _unit) > _dst) AND { (leader _x distance2D _unit) < _dst*4 };
		_nrGrps = allGroups select {_con};

		{
			_kA = _x knowsAbout _unit;
			if (_kA < 4) then { _x reveal [_unit, (_kA + 1) min 4]; };
		} forEach _nrGrps;
	}
];
*/


/*
player addEventHandler ["Fired",
	{
		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

		//{ _x suppressFor 60; } forEach (allunits select {_x knowsAbout _unit > 0});

		_nrUnits = allUnits select { _x distance2D _unit <= 600 };
		{
			_x reveal [_unit, ((_x knowsAbout _unit) + 1) min 4];
			if (_x knowsAbout _unit >= 1) then
			{
				_x suppressFor (floor random [2,4,6]);
			};
		} forEach _nrUnits;
	}
];
*/