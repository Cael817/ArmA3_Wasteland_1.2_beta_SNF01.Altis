//	@file version:
//	@file name: functions.sqf
//	@file author: cael817
//	@file info: WIP.... Piggybacks heavily on "fn_addmanagedaction" and "mf_compile" from A3W

#include "defines.sqf"

//fn_rewardLoyalty = "client\functions\fn_rewardLoyalty.sqf" call mf_compile; //Cael817, SNAFU, For player reward, from GoT
//tempVehicleTimer = "client\functions\tempVehicleTimer.sqf" call mf_compile; //Cael817, timer for temp vehicle by Munch

//test
auxops_check_something_false = { false } call mf_compile;
auxops_check_something_true = {	true } call mf_compile;
//test, end

//functions
auxops_bos_check_info = "addons\auxops\bos\checkinfo.sqf" call mf_compile;

auxops_bos_select_menu = "addons\auxops\bos\selectmenu.sqf" call mf_compile;

auxops_bos_hack_base = "addons\auxops\bos\hackbase.sqf" call mf_compile;

auxops_vos_check_info = "addons\auxops\vos\checkinfo.sqf" call mf_compile;

auxops_vos_select_menu = "addons\auxops\vos\selectmenu.sqf" call mf_compile;

auxops_vos_lock_vehicle = "addons\auxops\vos\lock.sqf" call mf_compile;

auxops_vos_unlock_vehicle = "addons\auxops\vos\unlock.sqf" call mf_compile;

auxops_vos_breaklock_vehicle = "addons\auxops\vos\breaklock.sqf" call mf_compile;

auxops_misc_mark_owned = "addons\auxops\misc\markOwned.sqf" call mf_compile;

auxops_misc_heal_self = "addons\auxops\misc\healSelf.sqf" call mf_compile;
/*
auxops_misc_flashlight_on = {

flashlight = "Item_acc_flashlight" createVehicle position player;
flashlight attachTo [player, [0, 1, 0.4], "Head"];
flashlight setVectorDirAndUp [[-1,0,0],[0,0,1]];

}
call mf_compile;

auxops_misc_flashlight_off = {
deleteVehicle flashlight;
}
call mf_compile;
*/
//functions, end

//checks
auxops_check_have_gps =
{
	({_x in ["ItemGPS", "B_UavTerminal", "O_UavTerminal", "I_UavTerminal"]} count assignedItems player > 0);
}
call mf_compile;

auxops_check_have_fak =
{
	((damage player)>0.01 && (damage player)<0.25499) && ('FirstAidKit' in (items player));
}
call mf_compile;

auxops_check_is_base_locker =
{
((vehicle player == player) && (cursortarget getvariable ["objectlocked", false]) && (cursortarget iskindof "land_device_assembled_f") && (player distance cursortarget) < 5);
}
call mf_compile;

auxops_check_not_owner_base_locker =
{
false //((vehicle player == player) && (cursortarget getvariable ["objectlocked", false]) && (cursortarget iskindof "land_device_assembled_f") && cursortarget getvariable ["owneruid",""] != getplayeruid player && (player distance cursortarget) < 5);
}
call mf_compile;

auxops_check_is_object =
{
({cursortarget iskindof _x } count ["thingx", "building", "reammobox_f"] > 0 && cursortarget distance player < 5);
}
call mf_compile;

auxops_check_is_vehicle =
{
({cursortarget iskindof _x } count ["landvehicle", "ship", "air"] > 0 && cursortarget distance player < 5);
}
call mf_compile;

auxops_check_owned_vehicle =
{
({cursortarget iskindof _x } count ["landvehicle", "ship", "air"] > 0 && (!isnil {cursortarget getvariable "owneruid"}) && cursortarget distance player < 5);
}
call mf_compile;

auxops_check_owner_vehicle =
{
({cursortarget iskindof _x } count ["landvehicle", "ship", "air"] > 0 && cursortarget getvariable ["owneruid",""] == getplayeruid player && cursortarget distance player < 5);
}
call mf_compile;

auxops_check_not_owner_vehicle =
{
	({cursortarget iskindof _x } count ["landvehicle", "ship", "air"] > 0 && cursortarget getvariable ["owneruid",""] != getplayeruid player && cursortarget distance player < 5);
}
call mf_compile;

auxops_check_locked_vehicle =
{
	call auxops_check_owner_vehicle && {locked cursortarget >= 2};
}
call mf_compile;

auxops_check_unlocked_vehicle =
{
	call auxops_check_owner_vehicle && {locked cursortarget < 2};
}
call mf_compile;

auxops_check_breaklock_vehicle =
{
	call auxops_check_not_owner_vehicle && {locked cursortarget >= 2};
}
call mf_compile;

auxops_check_is_in_locked_vehicle =
{
	((vehicle player != player) && {locked vehicle player >= 2});
}
call mf_compile;

auxops_check_is_in_unlocked_vehicle =
{
	((vehicle player != player) && {locked vehicle player < 2});
}
call mf_compile;

auxops_check_is_dlc_vehicle =
{
({cursortarget iskindof _x } count ["Heli_Transport_03_base_F", "Heli_Transport_04_base_F"] > 0 && cursortarget distance player < 5);
}
call mf_compile;

//actions
auxops_vos_actions =
{
	if (alive player && player iskindof "man") then
	{
		// addaction args: title, filename, (arguments, priority, showwindow, hideonuse, shortcut, condition, positioninmodel, radius, radiusview, showin3d, available, textdefault, texttooltip)
		{ [player, _x] call fn_addmanagedaction } foreach
		[
			["<img image='addons\auxops\icons\info.paa'/> <t color=""#fd3d00"">" + "Check vehicle info", auxops_vos_check_info, [], 1,false,false,"", auxops_check_is_vehicle],
			["<img image='addons\auxops\icons\key.paa'/> <t color=""#fd3d00"">" + "Open vehicle menu", auxops_vos_select_menu, [], 2, false, false, "", auxops_check_owned_vehicle],
			["<img image='addons\auxops\icons\key.paa'/> <t color=""#fd3d00"">" + "Unlock vehicle",  auxops_vos_unlock_vehicle,[], 2, false, false, "", auxops_check_locked_vehicle],
			["<img image='addons\auxops\icons\lock.paa'/> <t color=""#fd3d00"">" + "Lock vehicle",  auxops_vos_lock_vehicle,[], 2, false, false, "", auxops_check_unlocked_vehicle],
			["<img image='addons\auxops\icons\key.paa'/> <t color=""#fd3d00"">" + "Unlock from inside",  auxops_vos_unlock_vehicle,[], 2, false, false, "", auxops_check_is_in_locked_vehicle],
			["<img image='addons\auxops\icons\lock.paa'/> <t color=""#fd3d00"">" + "Lock from inside",  auxops_vos_lock_vehicle,[], 2, false, false, "", auxops_check_is_in_unlocked_vehicle],
			["<img image='addons\auxops\icons\key.paa'/> <t color=""#fd3d00"">" + "Break in and hotwire", auxops_vos_breaklock_vehicle, [], 2,false,false,"", auxops_check_breaklock_vehicle]
		];
	};
}
call mf_compile;

auxops_bos_actions =
{
	if (alive player && player iskindof "man") then
	{
		// addaction args: title, filename, (arguments, priority, showwindow, hideonuse, shortcut, condition, positioninmodel, radius, radiusview, showin3d, available, textdefault, texttooltip)
		{ [player, _x] call fn_addmanagedaction } foreach
		[
			//["<img image='addons\auxops\icons\info.paa'/> <t color=""#fd3d00"">" + "Check object info", auxops_bos_check_info, [], 1,false,false,"", auxops_check_is_object],
			["<img image='addons\auxops\icons\key.paa'/> <t color=""#fd3d00"">" + "Open base menu", auxops_bos_select_menu, [], 2, false, false, "", auxops_check_is_base_locker],
			["<img image='addons\auxops\icons\lock.paa'/> <t color=""#fd3d00"">" + "Hack base", auxops_bos_hack_base, [], 2, false, false, "", auxops_check_not_owner_base_locker]
		];
	};
}
call mf_compile;

auxops_misc_actions =
{
	if (alive player && player iskindof "man") then
	{
		// addaction args: title, filename, (arguments, priority, showwindow, hideonuse, shortcut, condition, positioninmodel, radius, radiusview, showin3d, available, textdefault, texttooltip)
		{ [player, _x] call fn_addmanagedaction } foreach
		[
			[format ["<img image='\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\supplydrop_ca.paa' color='%1'/> <t color='%1'>[</t>Airdrop Menu<t color='%1'>]</t>", "#FF0000"],"addons\APOC_Airdrop_Assistance\APOC_cli_menu.sqf",[], -100, false, false],
			["<img image='addons\auxops\icons\info.paa'/> <t color=""#fd3d00"">" + "mark my objects",  auxops_misc_mark_owned, [], 1, false, false, "", auxops_check_have_gps],
			["<img image='addons\auxops\icons\health.paa'/> <t color=""#fd3d00"">" + "heal self", auxops_misc_heal_self, [], 1,false,false,"", auxops_check_have_fak]
			//["<img image='addons\auxops\icons\health.paa'/> <t color=""#fd3d00"">" + "Flashlight ON", auxops_misc_flashlight_on , [], 1,false,false,"", auxops_check_have_gps],
			//["<img image='addons\auxops\icons\health.paa'/> <t color=""#fd3d00"">" + "Flashlight OFF", auxops_misc_flashlight_off , [], 1,false,false,"", auxops_check_have_gps]
		];
	};
}
call mf_compile;

auxops_misc_dlc_actions =
{
	if !(304380 in getDLCs 1) then
	{
		// addaction args: title, filename, (arguments, priority, showwindow, hideonuse, shortcut, condition, positioninmodel, radius, radiusview, showin3d, available, textdefault, texttooltip)
		{ [player, _x] call fn_addmanagedaction } foreach
		[
			["<img image='client\icons\driver.paa'/> <t color=""#fd3d00"">" + "Get in as Pilot", "addons\auxops\misc\moveInDriver.sqf", [], 6, false, false, "", "(locked cursorTarget < 2) && ((cursorTarget isKindOf 'Heli_Transport_03_base_F') or (cursorTarget isKindOf 'Heli_Transport_04_base_F')) && player distance cursorTarget < 10 && isNull driver cursorTarget"],
			["<img image='client\icons\gunner.paa'/> <t color=""#fd3d00"">" + "Get in as Copilot", "addons\auxops\misc\moveInTurret.sqf", [0], 6, true, true, "", "(locked cursorTarget < 2) && ((cursorTarget isKindOf 'Heli_Transport_03_base_F') or (cursorTarget isKindOf 'Heli_Transport_04_base_F')) && player distance cursorTarget < 10 && isNull (cursorTarget turretUnit [0])"],
			["<img image='client\icons\gunner.paa'/> <t color=""#fd3d00"">" + "Get in as Left door gunner", "addons\auxops\misc\moveInTurret.sqf", [1], 6, true, true, "", "(locked cursorTarget < 2) && (cursorTarget isKindOf 'Heli_Transport_03_base_F') && player distance cursorTarget < 10 && isNull (cursorTarget turretUnit [1])"],
			["<img image='client\icons\gunner.paa'/> <t color=""#fd3d00"">" + "Get in as Right door gunner", "addons\auxops\misc\moveInTurret.sqf", [2], 6, true, true, "", "(locked cursorTarget < 2) && (cursorTarget isKindOf 'Heli_Transport_03_base_F') && player distance cursorTarget < 10 && isNull (cursorTarget turretUnit [2])"]
		];
	};
}
call mf_compile;
/*
auxops_key_press ={
private ["_key"];
_key = _this select 1;

switch (true) do
{
	// Flashlight Y Key
	case (_key == 21):
	{
		if (soundVolume > 0.5) then
		{
			0.5 fadeSound 0.2;
			["You've inserted your earplugs.", 5] call mf_notify_client;
		}
		else
		{
			0.5 fadeSound 1;
			["You've taken out your earplugs.", 5] call mf_notify_client;
		};
	};
};
}
call mf_compile;
*/
auxops_initialized = true;