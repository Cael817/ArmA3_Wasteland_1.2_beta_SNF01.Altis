// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: deposit.sqf
//	@file Author: AgentRev
//	@file Function: mf_items_atm_deposit

#include "gui_defines.hpp"

#define ERR_NOT_ENOUGH_FUNDS "You don't have enough money."
#define ERR_MAX_BALANCE "Your account has reached the maximum balance."

disableSerialization;
private ["_dialog", "_input", "_amount", "_balance", "_maxBalance", "_gearLevel"];

_dialog = findDisplay AtmGUI_IDD;

if (isNull _dialog) exitWith {};

_input = _dialog displayCtrl AtmAmountInput_IDC;
_amount = _input call mf_verify_money_input;

if (_amount < 1) exitWith {};

if (player getVariable ["cmoney", 0] < _amount) exitWith
{
	[ERR_NOT_ENOUGH_FUNDS, 5] call mf_notify_client;
	playSound "FD_CP_Not_Clear_F";
};

_balance = player getVariable ["bmoney", 0];
_maxBalance = ["A3W_atmMaxBalance", 1000000] call getPublicVar;

_gearLevel = player getVariable ["gLevel", 0];
_maxBalance = switch _gearLevel do
	{
		case 1: {_maxBalance + 100000;};
		case 2: {_maxBalance + 200000;};
		case 3: {_maxBalance + 300000;};
		case 4: {_maxBalance + 400000;};
		case 5: {_maxBalance + 500000;};
		case 6: {_maxBalance + 600000;};
		case 7: {_maxBalance + 700000;};
		case 8: {_maxBalance + 800000;};
		case 9: {_maxBalance + 900000;};
		case 10: {_maxBalance + 1000000;};
		default {_maxBalance};
	};

if (_balance + _amount > _maxBalance) then
{
	_amount = 0 max (_maxBalance - _balance);
};

if (_amount < 1) exitWith
{
	[ERR_MAX_BALANCE, 5] call mf_notify_client;
	playSound "FD_CP_Not_Clear_F";
};

_input ctrlSetText (_amount call fn_numToStr);

pvar_processTransaction = ["atm", player, _amount];
publicVariableServer "pvar_processTransaction";

closeDialog 0; //Cael817, fix from Gigatek1
