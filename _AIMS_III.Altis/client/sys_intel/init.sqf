/*
	ACTIONS TO RECEIVE INTEL.
*/

/*
[
	target,
	title,
	idleIcon,
	progressIcon,
	conditionShow,
	conditionProgress,
	codeStart,
	codeProgress,
	codeCompleted,
	codeInterrupted,
	arguments,
	duration,
	priority,
	removeCompleted,
	showUnconscious
] call BIS_fnc_holdActionAdd 
*/



_actCiv =	[
				player,
				"Question Civilian",
				"images\questionmark.paa",
				"images\questionmark.paa",
				"((side cursortarget) == civilian) && player distance cursortarget < 2 && alive cursortarget && cursortarget isKindOf 'Man'",
				"true",
				{},
				{},
				{ call Ted_fnc_taskMarker; },
				{},
				[],
				15,
				90,
				false,
				false
			] call BIS_fnc_holdActionAdd;