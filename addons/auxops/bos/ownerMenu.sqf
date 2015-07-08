//	@file Version:
//	@file Name:
//	@file Author: Cael817, all credit to A3W
//	@file Created:

#define BOS_Menu_option 17001
disableSerialization;

private ["_start","_panelOptions","_BOS_select","_displayBOS"];
_uid = getPlayerUID player;
if (!isNil "_uid") then {
	_start = createDialog "BOS_Menu";

	_displayBOS = uiNamespace getVariable "BOS_Menu";
	_BOS_select = _displayBOS displayCtrl BOS_Menu_option;

	_panelOptions = [
					"Re Lock base objects",
					"Unlock base objects",
					"Setup Wall Defence",
					"Setup Base Lights",
					"Show objects owned by you",
					"Show Base Border",
					"Repair Re-Locker",
					"Lights OFF",
					"Lights ON",
					"Lock Down Base",
					"Release Lock Down",
					"Change PIN"
	];

	{
		_BOS_select lbAdd _x;
	} forEach _panelOptions;
};