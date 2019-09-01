//waitUntil {time > 0};
0 fadeRadio 0;
[player, "NoVoice"] remoteExec ["setSpeaker", 0, true];
enableEngineArtillery false;
enableEnvironment [false,true];
enableRadio false;
enableSaving [false,false];
enableSentences false;
enableTeamswitch false;
disableMapIndicators [true,true,true,true];
showGPS false;
showRadio false;
showSubtitles false;
//showHUD [false,true,false,false,false,false,false,false,false];
player addRating 0;
player allowSprint true;
player disableConversation true;

/*
setStaminaScheme "NORMAL";
player enableStamina true; 
player enableFatigue true;
player setStamina 60;
*/

player enableFatigue false;	//	== true after respawn!
player enableStamina false;
player setCustomAimCoef 0;
player setUnitRecoilCoefficient 0;

player setAnimSpeedCoef 1.21;	//	1.21 / 1.175
//player setCustomAimCoef 1.5;
//player setUnitRecoilCoefficient 2.5;
player setUnitTrait ["camouflageCoef", 1];
player setUnitTrait ["audibleCoef", 1];