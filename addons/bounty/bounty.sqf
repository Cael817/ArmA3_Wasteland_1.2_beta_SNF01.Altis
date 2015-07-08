//	@file Version: 1.0
//	@file Name: Bounty.sqf
//	@file Author: Cael817
//	@file Info:

if (isDedicated) exitWith {};
waitUntil {!isNull player};
#define PUBLIC_AREAS call cityList

player addEventHandler ["AnimChanged", {
	if (isNil "createBountyMarker" && player getvariable "cbounty" > 1000) then
	{	
		if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count PUBLIC_AREAS > 0) then
		{
			systemChat "A high value target was last seen near the area marked on the map";
			createBountyMarker = {
			deleteMarker "_bountyMarker"; 
			_pos = getPos (vehicle player);
			_markerName = format["bt%1",(name player)];
			_bountyMarker = createMarker ["_markerName", _pos];
			_bountyMarker setMarkerShape "ICON";
			_bountyMarker setMarkerPos _pos;
			_bounty = player getvariable "cbounty";
			_bountyMarker setMarkerText (format ["Bounty Target, %1 worth %2$", name player, _bounty]);
			_bountyMarker setMarkerColor "ColorRed";
			_bountyMarker setMarkerType "select";
			sleep 120;
			deleteMarker _bountyMarker;
			createBountyMarker = nil;
			};
			[] spawn createBountyMarker;
		};
	};
}];

player addEventHandler ["onDisconnect", {
	deleteMarker "_bountyMarker"; 
}];
