/*
	init Restrictions.
	
	-	Only allow players to use equipment specified for their role!
		Delete "illegal" kit and inform player to pick up their weapon.
	*	Replacing a weapon system at the drop of a hat by looting a corpse doesn't emphasise the importance of that roles job.
	
	-	Stop players taking too much ammo from shared crates.
	*	Players shouldn't be taking more than 12 magazines for their weapon systems!

	-	If player has DEFAULT THROW KEY, warn player and remove ALL grenades (Throwables).
		Once the DEFAULT THROW KEY is changed they can get grenades from crate.
		
	-	Detect if player is wearing "Hey - Look. I'm a cunt" goggles and remove them.
*/

#define badGoggles ["G_Goggles_VR"]

waitUntil {!isNull player};
waitUntil {player == player};
waitUntil {time > 5};

if (goggles player in badGoggles) then { removeGoggles player; };

if (actionKeys "throw" isEqualTo [34]) then
{
	hintSilent parseText "WARNING<br/>Default THROW key detected.<br/>You are required to change this keybind.<br/>Please change this now.";
};
