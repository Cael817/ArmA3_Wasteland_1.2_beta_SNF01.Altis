//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

private ["_ownersuid","_coownersuid,","_owner", "_coowners"];
_uid = getPlayerUID player;
_objects = nearestObjects [player, ["Land_Portable_generator_F"], 5];
_owner = cursorTarget getvariable "ownerUID";

if (!isNull (uiNamespace getVariable ["BOS_Menu", displayNull]) && player getVariable ["FAR_isUnconscious", 0] == 0) exitWith {};

switch (true) do
{
	case (_uid == _owner):
	{
		execVM "addons\AUXOPS\BOS\ownerMenu.sqf";
		hint "Welcome Owner";
	};
	case (_uid != _owner):
	{
		execVM "addons\AUXOPS\BOS\password_enter.sqf";
		//execVM "addons\AUXOPS\BOS\userMenu.sqf";
		hint "Welcome User";
	};
	default
	{
	hint "An unknown error occurred"
	};

};

/*
private ["_ownersuid","_coownersuid,","_owner", "_coowners"];
_uid = getPlayerUID player;
_objects = nearestObjects [player, ["Land_Portable_generator_F"], 5];
_owner = cursorTarget getvariable "ownerUID";

if (!isNull (uiNamespace getVariable ["BOS_Menu", displayNull]) && player getVariable ["FAR_isUnconscious", 0] == 0) exitWith {};

switch (true) do
{
	case (_uid == _owner):
	{
		execVM "addons\AUXOPS\BOS\ownerMenu.sqf";
		hint "Welcome Owner";
	};
	case (_uid != _owner):
	{
		execVM "addons\AUXOPS\BOS\password_enter.sqf";
		//execVM "addons\AUXOPS\BOS\userMenu.sqf";
		hint "Welcome User";
	};
	default
	{
	hint "An unknown error occurred"
	};

};
