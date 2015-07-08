AUXOPS_CheckNearbyBLs = {
	//Function taken from Epoch, specifically Plot4Life by Raymix.  Integration by Apoc
	private ["_findNearestPMs","_findNearestPM","_distance","_nearestPM","_ownerUID", "_isNearPM"];
	
	//Do some defining work
	//_player = _this select 0;
	_allowR3FLock = false;
	_distance = 75; //Distance hard-coded to be greater than the effective range of the laptop, trying to keep from overlapping effect fields
	
	//Check for nearby Property Managers (based on them being laptops)
	_findNearestPMs = nearestObjects [player, ["Land_Device_assembled_F"], _distance]; //create an array of all property managers within the distance
	_findNearestPM  = []; //give it an empty array as definition to keep it from spazzing out

	//Make sure we're only checking alive, and locked, Property Managers (Dunno if they're even destructible)
	{
		if ((alive _x) && (_x getVariable ["objectLocked",false])) then {
			_findNearestPM set [(count _findNearestPM), _x];
		};
	} count _findNearestPMs;
	
	_isNearPM = count (_findNearestPM); //Counting new array of alive PropMgrs
	
	//LOGIC!
	if (_isNearPM == 0) then { //No nearby, alive, Property Managers
		_allowR3FLock = true;
	} else {
		//Since there are property managers nearby, we need to decide if we allow the placement of base items nearby
		
		//check nearest PM's ownership against player
		_nearestPM = _findNearestPM select 0; //nearest is always first in array w/ nearestObjects
		//_ownerUID = _nearestPM getVariable ["ownerUID",0];
		//if (_ownerUID == getPlayerUID player) then {
		_lockdown = _nearestPM getVariable ["lockDown", false];
		if !(_lockDown) then {
			_allowR3FLock = true;
		} else {
			_allowR3FLock = false;
		};
	};
_allowR3FLock
};
