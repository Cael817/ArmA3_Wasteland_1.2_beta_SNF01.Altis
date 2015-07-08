//	@file Version:
//	@file Name:
//	@file Author: Cael817, all credit to A3W
//	@file Created:

#define VOS_Menu_option 17101
disableSerialization;

private ["_start","_panelOptions","_VOS_select","_displayVOS"];
_uid = getPlayerUID player;
if (!isNil "_uid") then {
	_start = createDialog "VOS_Menu";

	_displayVOS = uiNamespace getVariable "VOS_Menu";
	_VOS_select = _displayVOS displayCtrl VOS_Menu_option;

	_panelOptions = [
					"Unlock Vehicle",
					"Lock Vehicle",
					"Change PIN"
	];

	{
		_VOS_select lbAdd _x;
	} forEach _panelOptions;
};