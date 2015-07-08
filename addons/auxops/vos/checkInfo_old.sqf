private ["_owner", "_tag"];
_object = cursorTarget;

_tag = _object getVariable ["A3W_objectID", ""];

_owner = _object getVariable ["ownerName", ""];
_owner = if (_owner =="") then {"None"} else {_owner};
//_owner = if (!isNil _owner) then {"None"} else {_owner};

_class = typeOf _object;

_driver = driver _object;
_driver = if (isNull _driver) then {"None"} else {(name _driver)};

_picture = getText (configFile >> "CfgVehicles" >> (typeof _object) >> "picture");
_displayName = getText (configFile >> "CfgVehicles" >> (typeof _object) >> "displayName");

  _text = "";
  {
  private ["_label", "_value"];
    _label = _x select 0;
    _value = _x  select 1;
    _text = _text + "<t align='left' font='PuristaMedium' size='1'>" + _label + "</t><t align='left' font='PuristaMedium'>" + _value + "</t><br />";
  }
  forEach([
	["	ID:        ", _tag],
	["	Direction: ", str(round(getdir _object)) + toString [176]],
	["	Grid:      ", mapGridPosition _object],
	["	Altitude:  ", str(round(getposASL _object select 2)) + " meter(s) ASL"],
	["	Driver:    ", _driver],
	["	Seats:     ", str((_object emptyPositions "cargo")+(_object emptyPositions "driver")) + " seat(s)"],
	["	Size:      ", str(round((sizeOf _class)*10)/10) + " meter(s)"],
	["	Owner:     ", _owner]

	]);

_text = format["<t align='center' font='PuristaMedium' size='1.4' >Information</t><br /><img image='%1' size='2.8'/><br /><t  align='center'>(%2)</t>", _picture, _displayName] + "<br /><br />" + _text;
 hint parseText _text;
 