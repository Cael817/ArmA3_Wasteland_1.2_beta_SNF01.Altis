//14-03-2015 Rewrite by LouD
_disallowedLocations=[];

{
	switch (true) do
	{
		case (["Mission_", _x] call fn_startsWith):
		{
			_pos = getMarkerPos format["%1",_x];
			if (!(((_pos select 0) == 0) && {((_pos select 1) == 0) && {((_pos select 2) == 0)}})) then {
			_disallowedLocations pushBack _pos;
			// diag_log format ["Adding new pos: %1 : %2",_x,_pos]; // Debug
			};
		};
		case (["Town_", _x] call fn_startsWith):
		{
			_pos = getMarkerPos format["%1",_x];
			if (!(((_pos select 0) == 0) && {((_pos select 1) == 0) && {((_pos select 2) == 0)}})) then {
			_disallowedLocations pushBack _pos;
			// diag_log format ["Adding new pos: %1 : %2",_x,_pos]; // Debug
			};
		};
		case (["GenStore", _x] call fn_startsWith):
		{
			_pos = getMarkerPos format["%1",_x];
			if (!(((_pos select 0) == 0) && {((_pos select 1) == 0) && {((_pos select 2) == 0)}})) then {
			_disallowedLocations pushBack _pos;
			// diag_log format ["Adding new pos: %1 : %2",_x,_pos]; // Debug
			};
		};
		case (["GunStore", _x] call fn_startsWith):
		{
			_pos = getMarkerPos format["%1",_x];
			if (!(((_pos select 0) == 0) && {((_pos select 1) == 0) && {((_pos select 2) == 0)}})) then {
			_disallowedLocations pushBack _pos;
			// diag_log format ["Adding new pos: %1 : %2",_x,_pos]; // Debug
			};
		};
		case (["VehStore", _x] call fn_startsWith):
		{
			_pos = getMarkerPos format["%1",_x];
			if (!(((_pos select 0) == 0) && {((_pos select 1) == 0) && {((_pos select 2) == 0)}})) then {
			_disallowedLocations pushBack _pos;
			// diag_log format ["Adding new pos: %1 : %2",_x,_pos]; // Debug
			};
		};
	};
} forEach allMapMarkers;

(_disallowedLocations);