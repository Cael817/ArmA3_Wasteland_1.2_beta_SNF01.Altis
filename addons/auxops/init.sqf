//	@file Version:
//	@file Name: init.sqf
//	@file Author: Cael817
//	@file Info: WIP....

if (isDedicated) exitWith {};

#include "defines.sqf"

call compile preprocessFileLineNumbers "addons\auxops\bos\nearbyBaseLockers.sqf";
call compile preprocessFileLineNumbers "addons\auxops\functions.sqf";
call compile preprocessFile "addons\auxops\AF_Keypad\AF_KP_vars.sqf";

AUXOPS_Player_Init =
{	
	call AUXOPS_vos_Actions;
	call AUXOPS_bos_Actions;
	call AUXOPS_misc_Actions;
	call AUXOPS_misc_dlc_Actions;
	//call AUXOPS_key_press;
}
call mf_compile;

[] spawn
{
	waitUntil {!isNull player};

	[] spawn AUXOPS_Player_Init;

	// Event Handlers
	player addEventHandler ["Respawn", { [] spawn AUXOPS_Player_Init }];
};

waitUntil {time > 0};

waitUntil {!isNil "AUXOPS_Initialized"};

systemChat "AUXOPS: Initialized";
diag_log "AUXOPS: Initialized";