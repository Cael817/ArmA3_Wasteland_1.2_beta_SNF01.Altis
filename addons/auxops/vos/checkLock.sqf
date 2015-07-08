//@file Version: 1.0
//@file Name: checkLock.sqf
//@file Author: Cael817
player addEventHandler ["InventoryOpened",
	{
	_result = false;
	_vehicle = _this select 1;
	_locked = locked _vehicle;
		if(_locked > 1) then {
			titleText ["Cannot access gear in a locked vehicle.","PLAIN DOWN"]; titleFadeOut 2;
			_result = true;
		};
   _result
}];