//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

#define BOS_Menu_option 17001
disableSerialization;

private ["_panelType","_displayBOS","_BOS_select","_money"];
_uid = getPlayerUID player;
if (!isNil "_uid") then
{
	_panelType = _this select 0;

	_displayBOS = uiNamespace getVariable ["BOS_Menu", displayNull];

	switch (true) do
	{
		case (!isNull _displayBOS): //BOS panel
		{
			_BOS_select = _displayBOS displayCtrl BOS_Menu_option;

			switch (lbCurSel _BOS_select) do
			{
				case 0: //Re Lock Objects
				{
					closeDialog 0;
					execVM "addons\AUXOPS\BOS\reLock.sqf";
				};
				case 1: //Unlock Objects
				{
					closeDialog 0;
					execVM "addons\AUXOPS\BOS\unLock.sqf";
				};
				case 2: //Set up wall
				{
					closeDialog 0;
					execVM "addons\AUXOPS\BOS\baseWallRound.sqf";
				};
				case 3: //Set up lights
				{
					closeDialog 0;
					execVM "addons\AUXOPS\BOS\baseLightRound.sqf";
				};
				case 4: //Mark Owned Object
				{
					closeDialog 0;
					execVM "addons\AUXOPS\BOS\markOwned.sqf";
				};
				case 5: //Show Base Border
				{
					closeDialog 0;
					execVM "addons\AUXOPS\BOS\showBorder.sqf";
				};
				case 6: //Repair Base Re-Locker
				{
					closeDialog 0;
					execVM "addons\AUXOPS\BOS\repair.sqf";
				};
				case 7: //Turn off all lights
				{
					closeDialog 0;
					execVM "addons\AUXOPS\BOS\lightsOff.sqf";;
				};
				case 8: //Turn on all lights
				{
					closeDialog 0;
					execVM "addons\AUXOPS\BOS\lightsOn.sqf";
				};
				case 9: //Lock Down Base
				{
					closeDialog 0;					
					execVM "addons\AUXOPS\BOS\lockDown.sqf";
				};
				case 10: //Release Lock Down
				{
					closeDialog 0;					
					execVM "addons\AUXOPS\BOS\releaseLockDown.sqf";
				};
				case 11: //Change PIN
				{
					closeDialog 0;					
					execVM "addons\AUXOPS\BOS\password_change.sqf";
				};					
			};
		};
	};
};
