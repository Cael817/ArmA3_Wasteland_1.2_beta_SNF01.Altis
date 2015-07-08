// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: canUseWell.sqf
//	@file Author: AgentRev
//	@file Function: mf_items_atm_can_access

#define ERR_IN_VEHICLE "Can't do that while in a vehicle"
#define ERR_TOO_FAR "You are too far away"

private ["_well", "_error"];

_well = call auxops_waterSource_nearest;
_error = "failed";

switch (true) do
{
	case (isNull _well): {};
	case (!alive player): {};

	case (player distance _well > 3): {_error = ERR_TOO_FAR};
	case (vehicle player != player): {_error = ERR_IN_VEHICLE};

	default {_error = ""};
};

_error