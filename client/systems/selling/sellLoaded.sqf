// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: sellVehicleItems.sqf
//	@file Author: AgentRev

#define VEHICLE_MAX_SELLING_DISTANCE 50
#define PRICE_DEBUGGING true

#include "sellIncludesStart.sqf";

storeSellingHandle = _this spawn
{
	// get the list of the contents of the vehicle
	private ["_getHalfPrice", "_cargoToPairs","_thisVehicle","_sellValue","_vehContents","_vehContentsType","_allVehicleItems","_allGunStoreItems","_item", "_itemClass", "_itemQty", "_itemValue", "_itemName", "_confirmMsg"];

	_getHalfPrice = 
	{
		((ceil ((_this / 2) / 5)) * 5) // Ceil half the value to the nearest multiple of 5
	};
		
	_cargoToPairs =
	{
		// Example: converts [["a","b","c"],[1,2,3]] to [["a",1],["b",2],["c",3]]
		private "_array";
		_array = [];
			
		if (count _this > 1) then
		{
			{
				_array set [count _array, [_x, (_this select 1) select _forEachIndex]];
			} forEach (_this select 0);
		};
		
		_array
	};

	_thisVehicle=_this;
	_sellValue = 0;
	
	// get the contents
	_vehContents=_thisVehicle getVariable "R3F_LOG_objets_charges";
	_vehContentsType = [];
	_allVehicleItems = [];
	
	// gun store items list
	_allGunStoreItems = [call allRegularStoreItems, call staticGunsArray, call ammoArray] call BIS_fnc_arrayPushStack;

	// general store items list
	_allGenStoreItems = [call allGenStoreVanillaItems]  call BIS_fnc_arrayPushStack;

	// Preparation of the list of contents and quantities associated with objects
	for [{_i = 0}, {_i < count _vehContents}, {_i = _i + 1}] do
	{
		private ["_object"];
		_object = _vehContents select _i;
		
		if (_object isKindOf "ReammoBox_F") then
		{
			// Handle ammo boxes and their contents
			_vehContentsType = _vehContentsType + ["crate"];
			
			private ["_crateItems","_weaponEntry", "_weaponCfg", "_parentCfg", "_found", "_cfgItems", "_allCrateItems"];
			
			// Get all the items in the crate
			_crateWeapons = (getWeaponCargo _object) call _cargoToPairs;
			_crateMags = (getMagazineCargo _object) call _cargoToPairs;
			_crateItems = (getItemCargo _object) call _cargoToPairs;

			// Find parent equivalents to weapons which aren't listed in the gunstore, and add possible attachments to crate items array
			{
				_weaponEntry = _x;
				_weaponCfg = configFile >> "CfgWeapons" >> (_weaponEntry select 0);
				_parentCfg = _weaponCfg;
				_found = false;
			
				while {!_found && {isClass _parentCfg} && {getText (_weaponCfg >> "model") == getText (_parentCfg >> "model")}} do
				{
					{
						if (_x select 1 == configName _parentCfg) exitWith
						{
							_found = true;
						};
					} forEach _allGunStoreItems;
				
					if (!_found) then
					{
						_parentCfg = inheritsFrom _parentCfg;
					};
				};
			
				if (_found && {isClass (_weaponCfg >> "LinkedItems")}) then
				{
					_cfgItems = _weaponCfg >> "LinkedItems";
				
					for "_i" from 0 to (count _cfgItems - 1) do
					{
						[_crateItems, getText ((_cfgItems select _i) >> "item"), 1] call BIS_fnc_addToPairs;
					};
				};
			
				if (_parentCfg != _weaponCfg) then
				{
					_crateWeapons set [_forEachIndex, [_weaponEntry select 0, 0]]; // I wanted to use BIS_fnc_removeFromPairs but is not implemented yet :(
				
					if (_found) then
					{
						[_crateWeapons, configName _parentCfg, _weaponEntry select 1] call BIS_fnc_addToPairs;
					};
				};
			} forEach (+_crateWeapons);
		
			// Combine all items in new array for this crate
			_allCrateItems = [];
			[_allCrateItems, _crateWeapons] call BIS_fnc_arrayPushStack;
			[_allCrateItems, _crateMags] call BIS_fnc_arrayPushStack;
			[_allCrateItems, _crateItems] call BIS_fnc_arrayPushStack;
		
			if (count _allCrateItems > 0) then
			{
				// Add value of each item to sell value, and acquire item display name
				{
					_item = _x;
					_itemClass = _x select 0;
					_itemQty = _x select 1;
					_itemValue = 10;
			
					if (_itemQty > 0) then
					{
						{
							if (_x select 1 == _itemClass) exitWith
							{
								_itemValue = ((_x select 2) * _itemQty) call _getHalfPrice;
							};
						} forEach _allGunStoreItems;
				
						_sellValue = _sellValue + _itemValue;
				
						if (isClass (configFile >> "CfgWeapons" >> _itemClass)) then
						{
							_itemName = getText (configFile >> "CfgWeapons" >> _itemClass >> "displayName");
						}
						else
						{
							_itemName = getText (configFile >> "CfgMagazines" >> _itemClass >> "displayName");
						};
				
						_item set [2, _itemName];
						if (PRICE_DEBUGGING) then { _item set [3, _itemValue] };
						_allCrateItems set [_forEachIndex, _item];
					};
				} forEach _allCrateItems;
		
				// add the contents of this crate to the _allVehcileItems array
				[_allVehicleItems, _allCrateItems] call BIS_fnc_arrayPushStack;
			};
			
			// add the crate itself
			
		} else {
			// must be some other kind of object
			_vehContentsType = _vehContentsType + ["object"];

			private ["_cargoItem"];
			_cargoItem = [];
			
			_itemClass = typeOf _object;
			_itemQty = 1;
			_itemValue = 10;
			
			if (_itemQty > 0) then
			{
				{
					if (_x select 1 == _itemClass) exitWith
					{
						_itemValue = ((_x select 2) * _itemQty) call _getHalfPrice;
						_itemName = (_x select 0);
					};
				} forEach _allGenStoreItems;
				
				_sellValue = _sellValue + _itemValue;
			
				_cargoItem set [0, _itemClass];
				_cargoItem set [1, _itemQty];
				_cargoItem set [2, _itemName];
				if (PRICE_DEBUGGING) then { _cargoItem set [3, _itemValue] };
				
				// add this item to the _allVehcileItems array
				_allVehicleItems = _allVehicleItems + [_cargoItem];
			};
		};
	};

	// Add total sell value to confirm message
	_confirmMsg = format ["You will obtain $%1 for:<br/>", _sellValue];

	// Add item quantities and names to confirm message
	{
		_item = _x select 0;
		_itemQty = _x select 1;
			
		if (_itemQty > 0 && {count _x > 2}) then
		{
			_itemName = _x select 2;
			_confirmMsg = _confirmMsg + format ["<br/><t font='EtelkaMonospaceProBold'>%1</t> x %2%3", _itemQty, _itemName, if (PRICE_DEBUGGING) then { format [" ($%1)", _x select 3] } else { "" }];
		};
	} forEach _allVehicleItems;

	// Display confirmation
	if ([parseText _confirmMsg, "Confirm", "Sell", true] call BIS_fnc_guiMessage) then
	{
		private ["_vehicleItemList"];
		_vehicleItemList = + _vehContents;
		
		// loop over the list of items being sold and remove them from the vehicle
		for [{_i = 0}, {_i < count _vehContents}, {_i = _i + 1}] do
		{
			private ["_object"];
			_object = _vehContents select _i;
		  _objectType = _vehContentsType select _i;
		  if (_objectType == "crate") then 
		  {
		  	// empty crate items
				clearMagazineCargoGlobal _object;
				clearWeaponCargoGlobal _object;
				clearItemCargoGlobal _object;
			}; 
			
			// remove object from vehicle
			_vehicleItemList = _vehicleItemList - [_object];
			detach _object;
			
			// delete it
			deleteVehicle _object;
		};
		_thisVehicle setVariable ["R3F_LOG_objets_charges", _vehicleItemList, true];
		player setVariable ["cmoney", (player getVariable ["cmoney", 0]) + _sellValue, true];
		hint format ["You sold the vehicle contents for $%1", _sellValue];
		
		// Remove the 'Sell _vehicle contents' action handler
		_vehSellActionID = player getVariable ["vehContentSellActionID",[]];
		{
			player removeAction _x;
		} foreach _vehSellActionID;
		player setVariable ["vehContentSellActionID",[]];
	};
};

#include "sellIncludesEnd.sqf";