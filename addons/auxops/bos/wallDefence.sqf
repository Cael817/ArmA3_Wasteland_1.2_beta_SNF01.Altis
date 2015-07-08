//	@file Version: 1.0
//	@file Name: wallDefence.sqf
//	@file Author: Cael817, all credit to Larrow
//	@file Created: 20150217 21:19
//	@file Info:
if (!isServer) exitWith {};

_centerObject = cursorTarget;
_wallObject = "Land_HBarrier_1_F";

_centerObjectDir = getDir _centerObject;

_xPos = getPos _centerObject select 0;
_yPos = getPos _centerObject select 1;
_zPos = 0;
_dir = direction _centerObject;

hint format["%1 %2 %3 %4", _xPos, _yPos, _zPos, _dir];

if(typeOf _centerObject == "Land_Device_assembled_F") then {
	for "_i" from 0 to 40 do {
		createVehicle [_wallObject, [((_xPos - 20) + (_i * 1)),(_yPos + 20),_zPos], [],0,"CAN_COLLIDE"];
		createVehicle [_wallObject, [((_xPos - 20) + (_i * 1)),(_yPos - 20),_zPos], [],0,"CAN_COLLIDE"];
		createVehicle [_wallObject, [(_xPos - 20),((_yPos - 20) + (_i * 1)),_zPos], [],0,"CAN_COLLIDE"];
		createVehicle [_wallObject, [(_xPos + 20),((_yPos - 20) + (_i * 1)),_zPos], [],0,"CAN_COLLIDE"];
	};
};
/*

#define RADIUS 30 
#define AMOUNT 24

_target = cursorTarget;
_target_pos = getPos _target;

if (isNil "borderObjects") then {
    borderObjects = [];
    _inc = 360/AMOUNT; 
    for "_ang" from 0 to 359 step _inc do {
        _a = (_target_pos select 0)+(sin(_ang)*RADIUS);
        _b = (_target_pos select 1)+(cos(_ang)*RADIUS);
        _pos = [_a,_b,_target_pos select 2];
        _object = createVehicle ["Land_HBarrierWall6_F", _pos, [], 0, "CAN_COLLIDE"];
        _object setDir _ang;
        borderObjects pushBack _object;
    };

    [format ["Added objects around a radius of (%1m) they will be removed in 30 seconds",RADIUS], 5] call mf_notify_client;
};

sleep 30;
if ( !(isNil "borderObjects") ) then {
    {
        deleteVehicle _x;    
    }forEach borderObjects;
    borderObjects = nil;
};   
