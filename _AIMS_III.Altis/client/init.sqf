//cutText ["<t size='2.5'>|   S C E N A R I O   |   L O A D I N G   |</t>", "BLACK IN", 10e10, true, true];

waitUntil {!isNull player};
waitUntil {player == player};

[ ["STAY STILL",0.5,1], ["BE QUIET",0.5,1], ["LISTEN IN",0.5,1], ["",1,1], ["DON'T GET CAPTURED",0.5,1,2] ] spawn BIS_fnc_EXP_camp_SITREP;

setViewDistance 1000;
setTerrainGrid 3.125;
setObjectViewDistance [1000,100]; // viewDistance * 1.4
setDetailMapBlendPars [10, 20];
enableSatNormalOnDetail false;

#include "initEvents.sqf"
#include "init\setGear.sqf"
#include "sys_crates\init.sqf"
#include "sys_restricts\init.sqf"
#include "sys_baseSafety\init.sqf"

//sleep 5;
cutText ["","BLACK IN", 2];
player allowDamage true;