/*
	At least two players in a vehicle to drive while in base.
	
	Encourages buddy system.
*/


/*
while {true} do
{
    waitUntil {player inArea ARO_safeZone};

    while {player inArea ARO_safeZone} do
	{
        waitUntil {player inArea ARO_safeZone AND {count (crew vehicle player) < 2}};
		
		hint parseText "There must be at least 2 people in this vehicle before you can drive it.<br/>If you are alone at base, use the vehicle's radio (AN/PRC-117F - Channel 5) to contact your commander or any available air assets.<br/>Please do not leave base on foot or alone.";


		_veh = vehicle player;
		_handle = [{((_this select 0) select 0) setVelocity [0,0,0]}, 0, [vehicle player]] call CBA_fnc_addPerFrameHandler;

		waitUntil {!(player inArea ARO_safeZone) OR vehicle player != _veh OR driver _veh != player OR count (crew _veh) >= 2};

		[_handle] call CBA_fnc_removePerFrameHandler;

        if ((vehicle player) == _veh) then { _veh setFuel 1; };
    };
};