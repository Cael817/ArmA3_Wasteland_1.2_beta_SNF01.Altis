//@file Version: 1.3
//@file Name: healSelf.sqf
//@file Author: MercyfulFate, Cael817 based on eat.sqf

#define DURATION 10
#define ERR_CANCELLED "Cancelled";
#define ANIMATION "AinvPknlMstpSlayWrflDnon_medic"
private ["_checks", "_success"]; // , "_successVehicle"
	
_checks = {
	private ["_progress","_failed", "_text"];
	_progress = _this select 0;
	_text = "";
	_failed = true;

	switch (true) do {
		case (!alive player) : {}; // player is dead, not need for a error message
		case (vehicle player != player) : {hint "You cannot be in a vehicle when applying FAK.";};
		case (!("FirstAidKit" in (items player))) : {hint "You need an FAK to perform this action";};
		case (doCancelAction): {doCancelAction = false; _text = ERR_CANCELLED;};
		default {
			_failed = false;
			_text = format["Applying First Aid Kit %1%2 Complete", round(100*_progress), "%"];
		};
	};
	[_failed, _text];
};

_success = [DURATION, ANIMATION, _checks, []] call a3w_actions_start;
if (_success) then {
	player removeItem "FirstAidKit";
	player setDamage 0;
	["You are now in perfect shape again", 5] call mf_notify_client;
	hint "";
};
_success;
