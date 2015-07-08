//	@file Version:
//	@file Name:
//	@file Author: Cael817, 
//	@file Info:

#define RADIUS 34 
#define AMOUNT 8
#define PRICE_RELATIONSHIP 4
_baselocker = "Land_Device_assembled_F";
_centerObject = cursorTarget;
_centerObject_pos = getPos _centerObject;
_wallObject = "Land_LampHarbour_F";
_price = 100; //Base price


//find price from general store prices
{	
	if (_wallObject == _x select 1) then
	{	
	_price = _x select 2;
	_price = _price * PRICE_RELATIONSHIP ;
	};
} forEach (call genObjectsArray);

_playerMoney = player getVariable "cmoney";
_price = AMOUNT * _price;
_playerMoney = player getVariable "cmoney";

if (_price > 0) then 
{
	// Add confirm message
	_confirmMsg = format ["Warning read carefully!<br/>This will add lights around the base radius of %3m.<br/>They consists of %2 pieces of %1.<br/>The cost for this will be %4$, that's %5 times the cost if you would have done manually.<br/>Please move any vehicles away from the area.<br/>If uncertain of the (approximate) placement, use the ""show base border function"" before executing this", _wallObject, AMOUNT , RADIUS, _price, PRICE_RELATIONSHIP];

	// Display confirm message
	if ([parseText _confirmMsg, "Confirm", "OK", true] call BIS_fnc_guiMessage) then
	{	
		// Ensure the player has enough money
		if (_price > _playerMoney) exitWith
		{
			hint format ["You need $%1 to add a perimeter wall around the base.",  _price];
			playSound "FD_CP_Not_Clear_F";
		};
		
		player setVariable["cmoney",(player getVariable "cmoney")-_price,true];

		if(typeOf _centerObject == "Land_Device_assembled_F") then
		{
			_inc = 360/AMOUNT; 
			for "_ang" from 0 to 359 step _inc do {
			_a = (_centerObject_pos select 0)+(sin(_ang)*RADIUS);
			_b = (_centerObject_pos select 1)+(cos(_ang)*RADIUS);
			_pos = [_a,_b,_centerObject_pos select 2];
			_object = createVehicle [_wallObject, _pos, [], 0, "CAN_COLLIDE"];
			_object setDir _ang;
			_object setVariable ["allowDamage", true, true];
			_object setVariable ["objectLocked",true,true];
			_object setVariable ["R3F_LOG_disabled", false, true];
			_object setVariable ["R3F_Side", (playerSide), true];
			_object setVariable ["ownerUID", getPlayerUID player, true];
			_object setVariable ["ownerName", name player, true];
			pvar_manualObjectSave = netId _object;
			publicVariableServer "pvar_manualObjectSave";
			_centerObject setVariable ["hasLight", 1, true]; //Cael817, probably don't work but needs to be added
			};	
			[format ["Added basic lighting around the base radius of (%1m)",RADIUS], 5] call mf_notify_client;
		};
	};
};