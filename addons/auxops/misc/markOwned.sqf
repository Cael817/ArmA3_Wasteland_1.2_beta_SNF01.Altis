//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

#include "defines.sqf"

_maxLifetime = ["A3W_objectLifetime", 0] call getPublicVar;
_objects = nearestObjects [position player, ["Landvehicle", "Ship", "Air", "Building", "ReammoBox_F", "thingX"], OWNED_SEARCH_RADIUS];

if (isNil "ownedObjectMapMarkers") then {
	// This is the global we use to keep track of map markers
	ownedObjectMapMarkers = [];
};

if (count ownedObjectMapMarkers > 0) then {

	{
		deleteMarkerLocal _x;
	} forEach ownedObjectMapMarkers;
	ownedObjectMapMarkers = [];
	["Map cleared of previous markers", 5] call mf_notify_client;
};

ownedObjectMapMarkers = [];
_relockTime = [];
_lastUsedTime = [];
{
	if(_x getVariable "ownerUID" == getplayerUID player) then
	
	{
	private ["_name","_objPos","_name","_marker"];
	_name = gettext(configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName");
	_objPos = getPosATL _x;
	_relockTime = _x getVariable ["baseSaving_hoursAlive", 0];
	_lastUsedTime = _x getVariable ["vehSaving_hoursUnused", 0];
	_marker = "ownedObjectMapMarkers" + (str _forEachIndex);
	_marker = createMarkerLocal [_marker,_objPos];
	//_marker setMarkerTypeLocal "waypoint";
	//_marker setMarkerPosLocal _objPos;
	//_marker setMarkerTextLocal _name;
	//_marker setMarkerSizeLocal [0.6,0.6];

	if ((_maxLifetime - _relockTime) < 32) then
	{
		_marker setMarkerTypeLocal "waypoint";
		_marker setMarkerColorLocal "ColorOrange";
		_marker setMarkerTextLocal _name + "Re Lock within 24h";
		_marker setMarkerSizeLocal [0.6,0.6];
	}else{
		_marker setMarkerTypeLocal "waypoint";
		_marker setMarkerColorLocal "ColorBlue";
		_marker setMarkerTextLocal _name + format [" %1 Hours since locked (vehicles show wrong value)" , _relockTime];
		_marker setMarkerSizeLocal [0.6,0.6];

	};
	ownedObjectMapMarkers pushBack _marker;
};
} forEach _objects;
	//hint format ["_relockTime is %1 _maxLifetime is %2", _relockTime, _maxLifetime];
	if (count ownedObjectMapMarkers > 0) then {

		[format ["Added Markers for your objects within %1m on the map, they can only be seen by you and they will be removed in 30 seconds.", OWNED_SEARCH_RADIUS], 5] call mf_notify_client;

	}else{

		[format ["No owned objects found within %1m", OWNED_SEARCH_RADIUS], 5] call mf_notify_client;

};
	
sleep 30;
	
if (count ownedObjectMapMarkers > 0) then {

	{
		deleteMarkerLocal _x;
	} forEach ownedObjectMapMarkers;
	ownedObjectMapMarkers = [];
	["Map cleared", 5] call mf_notify_client;
};

/*
		if ((_relockTime < 0.1) || (_lastUsedTime < 0.1)) then //
		{
		_marker setMarkerColorLocal "ColorBlue";
		_marker setMarkerTextLocal _name + " was Used or locked this session";
		}else{
		_marker setMarkerColorLocal "ColorBlue";
		_marker setMarkerTextLocal _name + format [" %1 Hours since used or locked" , _relockTime];
	};