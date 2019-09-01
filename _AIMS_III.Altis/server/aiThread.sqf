
#include "defines.sqf"

uiSleep 5;

(format ["A.I.M.S. ( %1 ) : Initialised", time]) remoteExec ["systemChat"];

while {true} do
{
	waitUntil { uiSleep 5; ARO_playersFound };

	_grp = ARO_spawnGroup;

	_grp spawn ARO_fnc_initGroup;
	ARO_taskGroup;
	
	[_grp] spawn ARO_fnc_despawnCheck;


//	ARO_fnc_spawnRoutine;

	waitUntil { uiSleep 5; ARO_checkCap };

	/*
		IDEA:
			Loop sleep and AI skill should be based on;
			1.	Player count.
			2.	Civilian trust (INSRXN)
				The worse the civilian trust the more chance players die.
	*/
	sleep 1;
	//sleep ((floor random [1,3,2]) * 60);
};

(format ["A.I.M.S. ( %1 ) : Loop b0rKeD!", time]) remoteExec ["systemChat"];
