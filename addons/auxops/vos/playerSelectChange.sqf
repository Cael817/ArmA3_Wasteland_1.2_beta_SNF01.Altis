// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: playerSelectChange.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

#define coOwnerManagementDialog 17101
#define coOwnerManagementPlayerList 17102
#define coOwnerManagementInviteButton 17104

disableSerialization;

private["_dialog","_playerListBox","_coOwnerInvite","_target","_index","_playerData","_check","_unitCount"];

_dialog = findDisplay groupManagementDialog;
_playerListBox = _dialog displayCtrl groupManagementPlayerList;
_coOwnerInvite = _dialog displayCtrl groupManagementInviteButton;

_index = lbCurSel _playerListBox;
_playerData = _playerListBox lbData _index;

{ if (getPlayerUID _x == _playerData) exitWith { _target = _x } } forEach (call allPlayers);
if (isNil "_target") exitWith {};

if (!isStreamFriendlyUIEnabled && player == leader player && count units _target == 1) then //streamfriendly users cannot create groups themselves only accept invites
{
	_coOwnerInvite ctrlShow true;
} else {
	_coOwnerInvite ctrlShow false;
};
