//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

#define VOS_Menu_option 17101
disableSerialization;

private ["_panelType","_displayVOS","_VOS_select","_money"];
_uid = getPlayerUID player;
if (!isNil "_uid") then
{
	_panelType = _this select 0;

	_displayVOS = uiNamespace getVariable ["VOS_Menu", displayNull];

	switch (true) do
	{
		case (!isNull _displayVOS): //VOS panel
		{
			_VOS_select = _displayVOS displayCtrl VOS_Menu_option;

			switch (lbCurSel _VOS_select) do
			{
				case 0: //Unlock
				{
					closeDialog 0;					
					execVM "addons\AUXOPS\VOS\unlock.sqf";
				};
				
				case 1: //Lock
				{
					closeDialog 0;					
					execVM "addons\AUXOPS\VOS\lock.sqf";
				};
				
				case 2: //Change PIN
				{
					closeDialog 0;					
					execVM "addons\AUXOPS\VOS\password_change.sqf";
				};					
			};
		};
	};
};
