//@file Version: 1.0
//@file Name: setupMissionMarkers.sqf
//@file Author: Cael817
//@file Desc: For placing missionmarkers

_debug = false;

//Road Block Missions
_pos = [12422.8,15876.1,0.00146866];
_object = createMarker ["RoadBlockMission_1", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "RoadBlockMission_1";
_object setMarkerColor "ColorOrange";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerDir 82.670387;

_pos = [4496.59,14036.4,0.00143433];
_object = createMarker ["RoadBlockMission_2", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "RoadBlockMission_2";
_object setMarkerColor "ColorOrange";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerDir 241.437;

_pos = [15723,17459.7,0.0014782];
_object = createMarker ["RoadBlockMission_3", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "RoadBlockMission_3";
_object setMarkerColor "ColorOrange";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerDir 110.311;

//Elevated Missions
_pos = [10712.645,7609.0137,242.43985];
_object = createMarker ["ElevatedMission_1", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "ElevatedMission_1";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [11656.242,7575.7236,254.86172];
_object = createMarker ["ElevatedMission_2", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "ElevatedMission_2";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

//Missions
_pos = [5062.5967,13039.418,70.270027];
_object = createMarker ["Mission_1", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_1";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [8674.9541,18092.541,192.55379];
_object = createMarker ["Mission_2", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_2";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [12863.644,16739.199,85.280762];
_object = createMarker ["Mission_3", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_3";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [14719.545,16588.41,17.91];
_object = createMarker ["Mission_4", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_4";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [20857.92,14654.278,2.3399255];
_object = createMarker ["Mission_5", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_5";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [15210.702,11096.551,16.640888];
_object = createMarker ["Mission_6", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_6";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [22902.482,18832.326,6.8000588];
_object = createMarker ["Mission_7", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_7";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [26832.408,24353.201,27.07863];
_object = createMarker ["Mission_8", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_8";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [20944.896,7337.4028,25.394508];
_object = createMarker ["Mission_9", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_9";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [10481.982,8165.8809,92.54425];
_object = createMarker ["Mission_10", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_10";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [2727.3538,10029.145,15.386948];
_object = createMarker ["Mission_11", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_11";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [9214.7344,21595.523,16.21249];
_object = createMarker ["Mission_12", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_12";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [3067.5686,18451.545,30.175802];
_object = createMarker ["Mission_13", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_13";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [6580.0361,22660.633,94.924103];
_object = createMarker ["Mission_14", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_14";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [14610.646,23086.605,20.695858];
_object = createMarker ["Mission_15", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_15";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [20120.457,19884.57,15.311475];
_object = createMarker ["Mission_16", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_16";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [20723.074,10239.525,29.782133];
_object = createMarker ["Mission_17", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_17";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [14253.941,13012.583,4.9646177];
_object = createMarker ["Mission_18", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_18";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [8368.5674,10719.636,13.81883];
_object = createMarker ["Mission_19", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_19";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

_pos = [6170.2021,16368.712,44.518726];
_object = createMarker ["Mission_20", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Mission_20";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorOrange";
_object setMarkerDir 0;

//Sunken Missions
_pos = [18295.152,8136.5732,-6.7252245];
_object = createMarker ["SunkenMission_1", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "SunkenMission_1";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorWhite";
_object setMarkerDir 0;

_pos = [16985.289,13616.465,-0.27175087];
_object = createMarker ["SunkenMission_2", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "SunkenMission_2";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorWhite";
_object setMarkerDir 0;

_pos = [9866.0479,11111.971,0.014741103];
_object = createMarker ["SunkenMission_3", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "SunkenMission_3";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorWhite";
_object setMarkerDir 0;

_pos = [4992.7637,9908.2881,-0.020654676];
_object = createMarker ["SunkenMission_4", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "SunkenMission_4";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorWhite";
_object setMarkerDir 0;

_pos = [3505.4102,11439.938,-0.023277842];
_object = createMarker ["SunkenMission_5", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "SunkenMission_5";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorWhite";
_object setMarkerDir 0;

_pos = [3849.9155,15028.444,0.00057628582];
_object = createMarker ["SunkenMission_6", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "SunkenMission_6";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorWhite";
_object setMarkerDir 0;

_pos = [5281.2344,22658.328,0.23328479];
_object = createMarker ["SunkenMission_7", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "SunkenMission_7";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorWhite";
_object setMarkerDir 0;

_pos = [21207.197,20124.484,0.20755874];
_object = createMarker ["SunkenMission_8", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "SunkenMission_8";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorWhite";
_object setMarkerDir 0;

_pos = [24573.881,16154.248,-0.0090859979];
_object = createMarker ["SunkenMission_9", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "SunkenMission_9";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorWhite";
_object setMarkerDir 0;

_pos = [16673.6,21922.7,-2.6683];
_object = createMarker ["SunkenMission_10", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "SunkenMission_10";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorWhite";
_object setMarkerDir 0;
