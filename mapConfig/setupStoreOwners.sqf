//@file Version: 1.0
//@file Name: setupStoreOwners.sqf
//@file Author: Cael817, Many thanks to AgentRev for the CreateUnit part.
//@file Desc: For placing stores and markers

// If you need the unit object afterwards:
//_unit = missionNamespace getVariable _name;
_debug = false;
_grp = createGroup sideLogic;

//Generalstore 1
_name = "GenStore1";
_pos = [11533.004,9433.5479,0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [11541.983,9443.0586,19.547377];
_object = createMarker ["GenStore1_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GenStore1_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//Generalstore 2
_name = "GenStore2";
_pos = [20786.578,6807.8887,0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [20795.758,6811.291,0];
_object = createMarker ["GenStore2_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GenStore2_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//Generalstore 3
_name = "GenStore3";
_pos = [18087.299,15245.804,0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [18097.91,15254.862,0];
_object = createMarker ["GenStore3_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GenStore4_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//Generalstore 4
_name = "GenStore4";
_pos = [9268.7627,15868.939,0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [9281.6826,15875.171,0];
_object = createMarker ["GenStore4_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GenStore4_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//Generalstore 5
_name = "GenStore5";
_pos = [4565.4165,21384.393,0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [4572.313,21392.563,299.72269];
_object = createMarker ["GenStore5_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GenStore5_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//Gunstore 1
_name = "GunStore1";
_pos = [3366.886,13206.772,0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [3361.3064,13215.17,2.4381764];
_object = createMarker ["GunStore1_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GunStore1_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//Gunstore 2
_name = "GunStore2";
_pos = [16708.83,12779.239, 0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [16717.84,12775.421,0];
_object = createMarker ["GunStore2_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GunStore2_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//Gunstore 3
_name = "GunStore3";
_pos = [25786.891,21354.854,0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [25778.363,21368.246,20.712324];
_object = createMarker ["GunStore3_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GunStore3_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//Gunstore 4
_name = "GunStore4";
_pos = [9435.292,20267.016,0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [9448.4199,20273.068,125.69973];
_object = createMarker ["GunStore4_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GunStore4_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//Gunstore 5
_name = "GunStore5";
_pos = [9079.9619, 7730.4028,0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [9091.502,7717.8047,32.535469];
_object = createMarker ["GunStore5_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GunStore5_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

// Vehicle Store 1
_name = "VehStore1";
_pos = [26712.592,24601.9,20.398693]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [26701.904,24587.266,20.800213];
_object = createMarker ["VehStore1_landSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore1_landSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [26749.461,24573.195,21.928879];
_object = createMarker ["VehStore1_heliSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore1_heliSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [26779.346,24558.525,23.465689];
_object = createMarker ["VehStore1_planeSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore1_planeSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 138.999;

_pos = [26481.359,24687.391,-0.00056290452];
_object = createMarker ["VehStore1_seaSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore1_seaSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

// Vehicle Store 2
_name = "VehStore2";
_pos = [22958.713,18878.971,4.9242139]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [22954.973,18865.762,4.9896584];
_object = createMarker ["VehStore2_landSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore2_landSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [22994.232,18835.289,3.5937061];
_object = createMarker ["VehStore2_heliSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore2_heliSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [23016.986,18820.279,3.2045362];
_object = createMarker ["VehStore2_planeSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore2_planeSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 102.082;

_pos = [23002.1,18861.1,0.00150633];
_object = createMarker ["VehStore2_seaSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore2_seaSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

// Vehicle Store 3
_name = "VehStore3";
_pos = [20761.709,7264.2515,28.229145]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [20773.408,7242.7178,28.854717];
_object = createMarker ["VehStore3_landSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore3_landSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [20798.02,7227.4385,29.127123];
_object = createMarker ["VehStore3_heliSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore3_heliSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [20816.563,7258.4517,27.98922];
_object = createMarker ["VehStore3_planeSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore3_planeSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 49.6784;

_pos = [20772.9,7219.24,0.00149345];
_object = createMarker ["VehStore3_seaSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore3_seaSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

// Vehicle Store 4
_name = "VehStore4";
_pos = [14482.604,16330.667,18.864084]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [14501.121,16310.477,18.800117];
_object = createMarker ["VehStore4_landSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore4_landSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [14515.698,16297.085,18.365541];
_object = createMarker ["VehStore4_heliSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore4_heliSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [14556.957,16253.292,17.871447];
_object = createMarker ["VehStore4_planeSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore4_planeSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 44.2668;

_pos = [14510.3,16347.5,0.00144005];
_object = createMarker ["VehStore4_seaSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore4_seaSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

// Vehicle Store 5
_name = "VehStore5";
_pos = [3971.4854,15072.055,4.7541585]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [3968.136,15051.626,3.2309315];
_object = createMarker ["VehStore5_landSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore5_landSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [4001.2522,15050.635,6.2997766];
_object = createMarker ["VehStore5_heliSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore5_heliSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [4005.88,15046.2,0.00132513];
_object = createMarker ["VehStore5_planeSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore5_planeSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 84.0853;

_pos = [3922.1943,15060.141,0];
_object = createMarker ["VehStore5_seaSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore5_seaSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

// Vehicle Store 6
_name = "VehStore6";
_pos = [8982.7686, 7669.5381,0]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [8971.1309,7673.0337,42.584538];
_object = createMarker ["VehStore6_landSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore6_landSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [8968.1533,7690.6226,41.451664];
_object = createMarker ["VehStore6_heliSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore6_heliSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [8962.53,7668.43,0.00162125];
_object = createMarker ["VehStore6_planeSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore6_planeSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 32.3145;

_pos = [8849.7217,7754.7354,-0.00086545764];
_object = createMarker ["VehStore6_seaSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "VehStore6_seaSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;
