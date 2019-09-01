
/*
	RUN VARIOUS CHECKS TO ENSURE VITAL MISSION COMPONENTS HAVE NOT BEEN OVERLOOKED.

	mainCrate
	medicalTent
	respawn_west
	etc etc
*/

waitUntil {time > 0};

if (isNil "ARO_mainCrate") then { systemChat "ATTENTION: ARO_mainCrate does not exist!"; };
if (isNil "ARO_medicalTent") exitWith { systemChat "ATTENTION: ARO_medicalTent does not exist!"; };
if (isNil "respawn_west") then { systemChat "ATTENTION: respawn_west does not exist!"; };