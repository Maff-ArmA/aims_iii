if (isServer) then
{
	#include "server\missionEH.sqf"
	execVM "server\aiThread.sqf";
};