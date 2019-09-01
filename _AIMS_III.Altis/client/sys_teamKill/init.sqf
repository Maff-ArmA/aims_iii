
player addEventHandler ["Hit",
	{
		params ["_killed", "_killer", "_damage", "_instigator"];

		if (!isPlayer _killer OR _killer == _killed OR vehicle _killer == assignedVehicle _killed OR side group _killed != side group _killer) exitWith {};

		if (isNull _instigator) then {_instigator = UAVControl vehicle _killer select 0};
		if (isNull _instigator) then {_instigator = _killer};
/*
		_act = if (_damage == 1) then {"killed"} else {"injured"};

		_msg = format ["[ARO] %1 %2 %3", name _instigator, _act, name _killed];

		_msg remoteExec ["systemChat", 0];
*/
		(format ["[ARO] %1 %2 %3", name _instigator, if (_damage == 1) then {"killed"} else {"injured"}, name _killed]) remoteExec ["systemChat", 0];
	}
];
