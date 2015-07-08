//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

private ["_ownersuid","_coownersuid,","_owner", "_coowners"];
_uid = getPlayerUID player;
_objects = nearestObjects [player, ["LandVehicle", "Ship", "Air"], 5];
_owner = cursorTarget getvariable "ownerUID";

if (!isNull (uiNamespace getVariable ["VOS_Menu", displayNull]) && player getVariable ["FAR_isUnconscious", 0] == 0) exitWith {};

switch (true) do
{
	case (_uid == _owner):
	{
		execVM "addons\AUXOPS\VOS\ownerMenu.sqf";
		hint "Welcome Owner";
	};
	case (_uid != _owner):
	{
		execVM "addons\AUXOPS\VOS\password_enter.sqf";
		//execVM "addons\AUXOPS\VOS\anyoneMenu.sqf";
		hint "Welcome";
	};
	default
	{
	hint "An unknown error occurred"
	};

};

/*
private ["_ownersuid","_coownersuid,","_owner", "_coowners"];
_uid = getPlayerUID player;
_objects = nearestObjects [player, ["LandVehicle", "Ship", "Air"], 5];
_owner = cursorTarget getvariable "ownerUID";

if (!isNull (uiNamespace getVariable ["VOS_Menu", displayNull]) && player getVariable ["FAR_isUnconscious", 0] == 0) exitWith {};

switch (true) do
{
	case (_uid == _owner):
	{
		execVM "addons\AUXOPS\VOS\ownerMenu.sqf";
		hint "Welcome Owner";
	};
	case (_uid != _owner):
	{
		execVM "addons\AUXOPS\VOS\password_enter.sqf";
		//execVM "addons\AUXOPS\VOS\anyoneMenu.sqf";
		hint "Welcome";
	};
	default
	{
	hint "An unknown error occurred"
	};

};
