//	@file Version: 1.1
//	@file Name: showBorder.sqf
//	@file Author: Cael817, all credit to Larrow
//	@file Created: 20150217 21:19
//	@file Info: Creates a circle of objects around the set radius around the target and then removes them

#define RADIUS 32
#define AMOUNT 100

_target = cursorTarget;
_target_pos = getPos _target;

if (isNil "borderObjects") then {
    borderObjects = [];
    _inc = 360/AMOUNT; 
    for "_ang" from 0 to 359 step _inc do {
        _a = (_target_pos select 0)+(sin(_ang)*RADIUS);
        _b = (_target_pos select 1)+(cos(_ang)*RADIUS);
        _pos = [_a,_b,_target_pos select 2];
        _object = createVehicle ["Sign_Arrow_Large_F", _pos, [], 0, "CAN_COLLIDE"];
        _object setDir _ang;
        borderObjects pushBack _object;
    };

    [format ["Added Markers around the base radius (%1m) they will be removed in 30 seconds",RADIUS], 5] call mf_notify_client;
};

sleep 30;
if ( !(isNil "borderObjects") ) then {
    {
        deleteVehicle _x;    
    }forEach borderObjects;
    borderObjects = nil;
};  

sleep 30;
if ( !(isNil "borderObjects") ) then {
    {
        deleteVehicle _x;    
    }forEach borderObjects;
    borderObjects = nil;
};  
