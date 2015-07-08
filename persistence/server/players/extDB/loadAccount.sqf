// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: loadAccount.sqf
//	@file Author: Torndeco, AgentRev

if (!isServer) exitWith {};

private ["_UID", "_bank", "_moneySaving", "_result", "_data", "_columns", "_dataTemp", "_ghostingTimer", "_secs", "_bounty", "_gearLevel", "_gearEnabled"];
_UID = _this;

_bank = 0;
_gearLevel = 0; //Cael817, Added gear level
_bounty = 0; //Cael817, Added Bounty
_moneySaving = ["A3W_moneySaving"] call isConfigOn;
_bountyEnabled = ["A3W_bountyEnabled"] call isConfigOn;
_gearEnabled = ["A3W_gearEnabled"] call isConfigOn;

//Cael817, Added Gear level and Bounty
if (_gearEnabled) then
{
	_result = ["getPlayerGearLevel:" + _UID, 2] call extDB_Database_async;

	if (count _result > 0) then
	{
		_gearLevel = _result select 0;
	};
};

if (_bountyEnabled) then
{
	_result = ["getPlayerBounty:" + _UID, 2] call extDB_Database_async;

	if (count _result > 0) then
	{
		_bounty = _result select 0;
	};
};
//Cael817, End
if (_moneySaving) then
{
	_result = ["getPlayerBankMoney:" + _UID, 2] call extDB_Database_async;

	if (count _result > 0) then
	{
		_bank = _result select 0;
	};
};

_result = ([format ["checkPlayerSave:%1:%2", _UID, call A3W_extDB_MapID], 2] call extDB_Database_async) select 0;

if (!_result) then
{
	_data =
	[
		["PlayerSaveValid", false],
		["BankMoney", _bank],
		["Bounty", _bounty], //Cael817, Added bounty
		["GearLevel", _gearLevel] //Cael817, Added gear level
	];
}
else
{
	// The order of these values is EXTREMELY IMPORTANT!
	_data =
	[
		"Damage",
		"HitPoints",

		"LoadedMagazines",

		"PrimaryWeapon",
		"SecondaryWeapon",
		"HandgunWeapon",

		"PrimaryWeaponItems",
		"SecondaryWeaponItems",
		"HandgunItems",

		"AssignedItems",

		"CurrentWeapon",
		"Stance",

		"Uniform",
		"Vest",
		"Backpack",
		"Goggles",
		"Headgear",

		"UniformWeapons",
		"UniformItems",
		"UniformMagazines",

		"VestWeapons",
		"VestItems",
		"VestMagazines",

		"BackpackWeapons",
		"BackpackItems",
		"BackpackMagazines",

		"WastelandItems",

		"Hunger",
		"Thirst",

		"Position",
		"Direction"
	];

	if (_moneySaving) then
	{
		_data pushBack "Money";
	};

	_columns = "";

	{
		_columns = _columns + ((if (_columns != "") then { "," } else { "" }) + _x);
	} forEach _data;

	_result = [format ["getPlayerSave:%1:%2:%3", _UID, call A3W_extDB_MapID, _columns], 2] call extDB_Database_async;

	{
		_data set [_forEachIndex, [_data select _forEachIndex, _x]];
	} forEach _result;

	_dataTemp = _data;
	_data = [["PlayerSaveValid", true]];

	_ghostingTimer = ["A3W_extDB_GhostingTimer", 5*60] call getPublicVar;

	if (_ghostingTimer > 0) then
	{
		_result = [format ["getTimeSinceServerSwitch:%1:%2:%3", _UID, call A3W_extDB_MapID, call A3W_extDB_ServerID], 2] call extDB_Database_async;

		if (count _result > 0) then
		{
			_secs = _result select 0;

			if (_secs < _ghostingTimer) then
			{
				_data pushBack ["GhostingTimer", _ghostingTimer - _secs];
			};
		};
	};

	_data append _dataTemp;
	_data pushBack ["BankMoney", _bank];
	_data pushBack ["Bounty", _bounty]; //Cael817, Added Bounty
	_data pushBack ["GearLevel", _gearLevel]; //Cael817, Added gear level
	_data pushBack ["PlayerSaveValid", true];
};

_data
