//@file Version: 1.0
//@file Name: gearLevel1.sqf
//@file Author: Cael817, from openDAyz.net
//@file Info: Kills the player from from at trigger if UID not in _allowedArray

_allowedArray = ["123456789"]; //["123456789","123456789","123456789"] UIDs go here

if ((getPlayerUID player) in _allowedArray) then {
	titleText ["You are cleared to stay...  Welcome back.", "PLAIN DOWN", 3];
} else {
	titleText ["This area is protected by a deadly nerve gas agent.. LEAVE NOW!", "PLAIN DOWN", 3];
	sleep 5;
	titleText ["Your presence here has been logged!", "PLAIN DOWN", 3];
	sleep 5;
	titleText ["The NERVE GAS will kill you in less than 20 seconds..!", "PLAIN DOWN", 3];
	sleep 10;
	titleText ["You now have less than 10 seconds to leave (stay and die?)", "PLAIN DOWN", 3];
	sleep 10;
	titleText ["GAS! GAS! GAS!", "PLAIN DOWN", 3];
	sleep 3;
	player setDamage 1;
};