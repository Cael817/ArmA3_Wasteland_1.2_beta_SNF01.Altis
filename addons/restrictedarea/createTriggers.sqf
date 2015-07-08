//@file Version: 1.1
//@file Name: gearLevel1.sqf
//@file Author: Cael817, based KKs trigger tutorial
//@file Info: Creates triggers at coordinates in _triggerPositions

_triggerPositions = [[12833.8,16736.4,0.0014267]]; //[[0,0,0],[1,1,1],[2,2,2]] 12806.6,16676.2,0.00141144 = Helipads @ the military base Nort of Altis airfield



if (isServer) then {
    0 = _triggerPositions spawn {
        waitUntil {time > 0};
        //^^^ needed to make sure that public var 
        //assigned to trigger later broadcasts properly
        //it's a bug that might get fixed in the future
        {
            _script = [_x, _forEachIndex] spawn {
                _tr = createTrigger ["EmptyDetector", _this select 0];
                _tr setVariable ["RAtrID", _this select 1, true];
            };
            waitUntil {scriptDone _script};
        } forEach _this;
        RAtriggersMade = true;
        publicVariable "RAtriggersMade";
    };
};
//set triggers on client
if (!isDedicated) then {
    _triggersSet = 0 spawn {
        waitUntil {!isNil "RAtriggersMade"};
        {
            _trID = _x getVariable ["RAtrID", -1];
            if (_trID >= 0) then {

                _x setTriggerArea [10,10,0,false];
				_x setTriggerActivation ["ANY", "PRESENT", true];				
				//_x setTriggerTimeout [5, 25, 20, true];	
				_trCon = "{vehicle _x in thisList && isplayer _x} count allunits > 0";

				//_trAct = "hint 'You entered a protected area'";
				//_trAct = "restrictedArea = [] execVM 'addons\restrictedArea\restrictedArea.sqf' ; hint 'You entered a protected area'";
				_trAct = "restrictedArea = [] execVM 'addons\restrictedArea\restrictedArea.sqf'";
				//_trDeact = "terminate restrictedArea; hint 'You left the area and should be safe'";
				_trDeact = "terminate restrictedArea; titleText ['You left the area and should be safe!', 'PLAIN DOWN', 3]";
				//_trDeact = "hint 'You left the area and should be safe'";
				//_trDeact = "execVM 'xxx\xxx\xxx.sqf'"; 
				_x setTriggerStatements [_trCon, _trAct, _trDeact];
            };
        } forEach allMissionObjects "EmptyDetector";
    };
    //continue with the rest of code
    waitUntil {scriptDone _triggersSet};
	hint "restricted area triggers set";
};