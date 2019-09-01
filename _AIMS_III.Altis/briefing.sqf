
_briefWeather = "<font size='32'>Weather</font><br /><br />EMPTY<br />";

_briefGround = "<font size='32'>Ground</font><br /><br />EMPTY<br />";

_briefSituation = "<font size='32'>Situation</font><br /><br />You are taking part in a test.<br />As it is a test there will likely be some bugs.<br />You should report these bugs.<br />";

_briefEnemy = "<font size='32'>Enemy</font><br /><br />The enemy is BAD!<br />";

_briefFriendly = "<font size='32'>Friendly</font><br /><br />EMPTY<br />";

_briefMission = "<font size='32'>Mission</font><br /><br />As this is a test there is no real mission or ending.<br />The player in the Section Commander role should plan and conduct a fighting partol in the Tactical Area of Responsibility.<br /><br />Take turns acting as the Section Commander. Challange yourself, your section, and gain experience.<br />";

_briefExecution = "<font size='32'>Execution</font><br /><br />Conduct fighting patrol in the <marker name='TAOR'>Tactical Area of Responsibility</marker>.<br /><br />Be aggressive but don't be afraid to break contact.<br />";

_briefSupport = "<font size='32'>Support</font><br /><br />EMPTY<br />";

_briefSignal = "<font size='32'>Command and Signal</font><br /><br />Radio<br />AN/PRC-343 PRR<br />Channel 10: Platoon HQ<br />Channel 11: 1 Section<br />Channel 12: 2 Section<br />Channel 13: 3 Section<br />Channel 14: Attachment 1<br />Channel 15: Attachment 2<br /><br />AN/PRC-117F<br />Channel 5: 1 Platoon Net<br /><br />Ground Marking<br />White: Screening.<br />Red: Enemy / Danger.<br />Yellow / Orange: Safe Area.<br />Green: Casualty.<br />Blue: Friendly Forces.<br />Purple: HLS / RV.<br />";

_briefBCR = "<font size='32'>Battle Casualty Replacement</font><br /><br />It's a fancy word for respawn.<br /><br />When you respawn you will be kitted out with what you started the mission with.<br />You should check to make sure this is so.<br /><br />Use a vehicle to contact your section.<br />Radio channels are covered in Command and Signal.<br />You should never leave base alone.<br />";


{
	player createDiaryRecord ["Diary", _x];
} forEach
[
	["Battle Casualty Replacement", _briefBCR],
	["Command and Signal", _briefSignal],
	["Service Support", _briefSupport],
	["Execution", _briefExecution],
	["Mission", _briefMission],
	["Friendly", _briefFriendly],
	["Enemy", _briefEnemy],
	["Situation", _briefSituation],
	["Ground", _briefGround],
	["Weather", _briefWeather]
];
