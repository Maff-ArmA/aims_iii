/*
	setTrait.sqf

	this setVariable "ARO_isMedic";
	this setVariable "ARO_isEngineer";
	this setVariable "ARO_isEOD";
	this setVariable "ARO_isInterpreter";

	Give certain players a special trait, or patrol skill.
	Players can only have ONE patrol skill, not multiple!

	Example:

		player setUnitTrait ["Medic", true];
			Pltn Medic.
			* Can heal units (** as long as they are at the medic tent.)
				**	Vanilla First Aid doesn't support CASEVAC?!

		player setUnitTrait ["Engineer", true];
			An Engineer can:
			- Detect IED's/BT's but CANNOT disarm them.
			- Repair vehicles and... THINGS.
			* Should be Rifleman / Grenadier.


		player setUnitTrait ["ExplosiveSpecialist", true];
			An ExplosiveSpecialist can:
			- Detect IED's/BT's and IS ABLE to disarm them.
			* Don't give this skill to players in a section.
			* EOD should be a seperate team - Attached to pltn, maybe?


		player setUnitTrait ["UAVHacker", true];
			A UAVHacker can:
			- Talk to the locals - He is an interpreter/linguist.
			* Can be section level, platoon level or Attachment.
			* Ideally should be SC, 2IC, or PC.

*/
waitUntil {!isNull player};
waitUntil {player == player};
if (player getVariable "ARO_isMedic") then { player setUnitTrait ["Medic", true]; };
if (player getVariable "ARO_isEngineer") then { player setUnitTrait ["Engineer", true]; };
if (player getVariable "ARO_isEOD") then { player setUnitTrait ["ExplosiveSpecialist", true]; };
if (player getVariable "ARO_isInterpreter") then { player setUnitTrait ["UAVHacker", true]; };