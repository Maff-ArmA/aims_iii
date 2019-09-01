/*
	TRACK DETRIMENTAL ACTIONS TO MISSION!
	
	https://community.bistudio.com/wiki/Arma_3:_Event_Handlers/addMissionEventHandler
*/

#define ARO_msg_civKilled "Civilian casualties is detrimental to the mission."
#define ARO_msg_bldKilled "Destroying buildings is detrimental to the mission."
#define ARO_msg_teamKill "Teamkilling is against the rules. Always PID targets!"

//addMissionEventHandler ["Map", { params ["_mapIsOpened", "_mapIsForced"]; if (_mapIsOpened) then { _grid = mapGridPosition player; hintSilent format ["GR %1 %2", _grid select [0,3], _grid select [3,3]]; }; } ];


/* Unable to detect if AN ACTUAL PLAYER has destroyed the building! */
addMissionEventHandler ["BuildingChanged", { params ["_previousObject", "_newObject", "_isRuin"]; if (_isRuin) then { ARO_msg_bldKilled remoteExec ["systemChat", 0]; /* DECREASE TRUST */ }; } ];

addMissionEventHandler ["EntityKilled", { params ["_killed", "_killer", "_instigator"]; if (isNull _instigator) then { _instigator = _killer }; if (side group _killed isEqualTo civilian && {isPlayer _instigator}) then { ARO_msg_civKilled remoteExec ["systemChat", 0]; }; if (side group _killed isEqualTo side group _instigator && {isPlayer _instigator}) then { ARO_msg_teamKill remoteExec ["systemChat", 0]; }; } ];

//	Disable 3rd Person view if enabled.
//	Can use PlayerViewChanged to optimise viewDistance?
addMissionEventHandler ["PlayerViewChanged", { params ["_oldUnit", "_newUnit", "_vehicle", "_oldCamera", "_newCamera", "_uav"]; if (cameraView == "EXTERNAL") then { _vehicle switchCamera "INTERNAL"; }; } ];
