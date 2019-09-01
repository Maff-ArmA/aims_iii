waitUntil {!isNull player};
waitUntil {player == player};
cutText ["<t size='2.5'>|   S C E N A R I O   |   L O A D I N G   |</t>", "BLACK", 0.001, true, true];
[player] join grpNull;
execVM "briefing.sqf";
#include "client\preInit.sqf"
#include "client\init.sqf"