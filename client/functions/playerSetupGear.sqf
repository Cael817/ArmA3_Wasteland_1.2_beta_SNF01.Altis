// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_player", "_uniform", "_vest", "_headgear", "_goggles", "_gearLevel"];
_player = _this;

_gearEnabled = ["A3W_gearEnabled"] call isConfigOn; //Cael817, from TOPArma donator system
_gearLevel = player getVariable ["glevel", 0]; //Cael817, from TOPArma donator system

// Clothing is now defined in "client\functions\getDefaultClothing.sqf"
_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

//if (_uniform != "") then { _player forceAddUniform _uniform }; //Cael817, from loudNL for possible future use (check for nude dudes)
if (_uniform != "") then { _player addUniform _uniform };
if (_vest != "") then { _player addVest _vest };
if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// Remove GPS
_player unlinkItem "ItemGPS";

// Remove radio
//_player unlinkItem "ItemRadio";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

// Add NVG
_player linkItem "NVGoggles"; //Cael817, readded NVG until better lighting solution is found ie. pistol light or flashlight
 //Cael817, from TOPArma donator system
switch (_gearLevel) do
{
	case 1:
	{
		_player addBackpack "B_AssaultPack_rgr";
		if (["_diver_", typeOf _player] call fn_findString != -1) then {} else 
		{
			_player addVest "V_BandollierB_cbr";
			_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
		};
		//Slotted Items
		_player addWeapon "Binocular"; //Binocular "Rangefinder", "Binocular"
		_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
		_player linkItem ""; //GPS, "ItemGPS"
		_player addHeadgear ""; //Hat or helmet. Overwrites, add as item if you want it a an extra item
		//Handgun
		_player addMagazines ["16Rnd_9x21_Mag", 4];
		_player addWeapon "hgun_Rook40_F";
		_player addhandGunItem "";
		_player addhandGunItem "";
		//Primary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		//Secondary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		//Grenades
		_player addMagazines ["MiniGrenade", 1];
		//Select Active Weapon
		_player selectWeapon "hgun_Rook40_F";
		//Misc Items
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem ""; //Add to inventory if there is space
		_player addItem ""; //Add to inventory if there is space
	};
	case 2:
	{
		_player addBackpack "B_FieldPack_khk";
		if (["_diver_", typeOf _player] call fn_findString != -1) then {} else 
		{
			_player addVest "V_TacVest_brn";
			_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
		};
		//Slotted Items
		_player addWeapon "Binocular"; //Binocular "Rangefinder", "Binocular"
		_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
		_player linkItem ""; //GPS, "ItemGPS"
		_player addHeadgear ""; //Hat or helmet. Overwrites, add as item if you want it a an extra item
		//Handgun
		_player addMagazines ["9Rnd_45ACP_Mag", 5];
		_player addWeapon "hgun_ACPC2_F";
		_player addhandGunItem "";
		_player addhandGunItem "";
		//Primary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		//Secondary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		//Grenades
		_player addMagazines ["MiniGrenade", 1];
		//Select Active Weapon
		_player selectWeapon "hgun_ACPC2_F";
		//Misc Items
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem ""; //Add to inventory if there is space
	};
	case 3:
	{
		_player addBackpack "B_Kitbag_rgr";
		if (["_diver_", typeOf _player] call fn_findString != -1) then {} else 
		{
			_player addVest "V_PlateCarrier3_rgr";
			_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
		};
		//Slotted Items
		_player addWeapon "Binocular"; //Binocular "Rangefinder", "Binocular"
		_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
		_player linkItem ""; //GPS, "ItemGPS"
		_player addHeadgear ""; //Hat or helmet. Overwrites, add as item if you want it a an extra item
		//Handgun
		_player addMagazines ["9Rnd_45ACP_Mag", 5];
		_player addWeapon "hgun_ACPC2_F";
		_player addhandGunItem "";
		_player addhandGunItem "muzzle_snds_acp";
		//Primary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		//Secondary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		//Grenades
		_player addMagazines ["MiniGrenade", 1];
		//Select Active Weapon
		_player selectWeapon "hgun_ACPC2_F";
		//Misc Items
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem ""; //Add to inventory if there is space
	};
	case 4:
	{
		_player addBackpack "B_Carryall_oli";
		if (["_diver_", typeOf _player] call fn_findString != -1) then {} else 
		{
			_player addVest "V_PlateCarrier3_rgr";
			_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
		};
		//Slotted Items
		_player addWeapon "Binocular"; //Binocular "Rangefinder", "Binocular"
		_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
		_player linkItem "ItemGPS"; //GPS, "ItemGPS"
		_player addHeadgear "H_HelmetB_paint"; //Hat or helmet. Overwrites, add as item if you want it a an extra item
		//Handgun
		_player addMagazines ["9Rnd_45ACP_Mag", 5];
		_player addWeapon "hgun_ACPC2_F";
		_player addhandGunItem "";
		_player addhandGunItem "muzzle_snds_acp";
		//Primary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		//Secondary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		//Grenades
		_player addMagazines ["MiniGrenade", 1];
		//Select Active Weapon
		_player selectWeapon "hgun_ACPC2_F";
		//Misc Items
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem ""; //Add to inventory if there is space
	};
	case 5:
	{
		_player addBackpack "B_Carryall_oli";
		if (["_diver_", typeOf _player] call fn_findString != -1) then {} else 
		{
			_player addVest "V_PlateCarrier3_rgr";
			_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
		};
		//Slotted Items
		_player addWeapon "Binocular"; //Binocular "Rangefinder", "Binocular"
		_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
		_player linkItem "ItemGPS"; //GPS, "ItemGPS"
		_player addHeadgear "H_HelmetB_paint"; //Hat or helmet. Overwrites, add as item if you want it a an extra item
		//Handgun
		_player addMagazines ["11Rnd_45ACP_Mag", 4];
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addhandGunItem "optic_MRD";
		_player addhandGunItem "muzzle_snds_acp";
		//Primary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		//Secondary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		//Grenades
		_player addMagazines ["MiniGrenade", 1];
		//Select Active Weapon
		_player selectWeapon "hgun_Pistol_heavy_01_F";
		//Misc Items
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem "G_Bandanna_sport"; //Add to inventory if there is space
	};
	case 6:
	{
		_player addBackpack "B_Carryall_oli";
		if (["_diver_", typeOf _player] call fn_findString != -1) then {} else 
		{
			_player addVest "V_PlateCarrier3_rgr";
			_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
		};
		//Slotted Items
		_player addWeapon "Binocular"; //Binocular "Rangefinder", "Binocular"
		_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
		_player linkItem "ItemGPS"; //GPS, "ItemGPS"
		_player addHeadgear "H_HelmetB_paint"; //Hat or helmet. Overwrites, add as item if you want it a an extra item
		//Handgun
		_player addMagazines ["11Rnd_45ACP_Mag", 4];
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addhandGunItem "optic_MRD";
		_player addhandGunItem "muzzle_snds_acp";
		//Primary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		//Secondary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		//Grenades
		_player addMagazines ["MiniGrenade", 1];
		//Select Active Weapon
		_player selectWeapon "hgun_Pistol_heavy_01_F";
		//Misc Items
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem ""; //Add to inventory if there is space
	};
	case 7:
	{
		_player addBackpack "B_Carryall_oli";
		if (["_diver_", typeOf _player] call fn_findString != -1) then {} else 
		{
			_player addVest "V_PlateCarrier3_rgr";
			_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
		};
		//Slotted Items
		_player addWeapon "Binocular"; //Binocular "Rangefinder", "Binocular"
		_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
		_player linkItem "ItemGPS"; //GPS, "ItemGPS"
		_player addHeadgear "H_HelmetB_paint"; //Hat or helmet. Overwrites, add as item if you want it a an extra item
		//Handgun
		_player addMagazines ["11Rnd_45ACP_Mag", 4];
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addhandGunItem "optic_MRD";
		_player addhandGunItem "muzzle_snds_acp";
		//Primary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		//Secondary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		//Grenades
		_player addMagazines ["MiniGrenade", 1];
		//Select Active Weapon
		_player selectWeapon "hgun_Pistol_heavy_01_F";
		//Misc Items
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem ""; //Add to inventory if there is space
	};
	case 8:
	{
		_player addBackpack "B_Carryall_oli";
		if (["_diver_", typeOf _player] call fn_findString != -1) then {} else 
		{
			_player addVest "V_PlateCarrier3_rgr";
			_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
		};
		//Slotted Items
		_player addWeapon "Binocular"; //Binocular "Rangefinder", "Binocular"
		_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
		_player linkItem "ItemGPS"; //GPS, "ItemGPS"
		_player addHeadgear "H_HelmetB_paint"; //Hat or helmet. Overwrites, add as item if you want it a an extra item
		//Handgun
		_player addMagazines ["11Rnd_45ACP_Mag", 4];
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addhandGunItem "optic_MRD";
		_player addhandGunItem "muzzle_snds_acp";
		//Primary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		//Secondary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		//Grenades
		_player addMagazines ["MiniGrenade", 1];
		//Select Active Weapon
		_player selectWeapon "hgun_Pistol_heavy_01_F";
		//Misc Items
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem ""; //Add to inventory if there is space
	};
	case 9:
	{
		_player addBackpack "B_Carryall_oli";
		if (["_diver_", typeOf _player] call fn_findString != -1) then {} else 
		{
			_player addVest "V_PlateCarrier3_rgr";
			_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
		};
		//Slotted Items
		_player addWeapon "Binocular"; //Binocular "Rangefinder", "Binocular"
		_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
		_player linkItem "ItemGPS"; //GPS, "ItemGPS"
		_player addHeadgear "H_HelmetB_paint"; //Hat or helmet. Overwrites, add as item if you want it a an extra item
		//Handgun
		_player addMagazines ["11Rnd_45ACP_Mag", 4];
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addhandGunItem "optic_MRD";
		_player addhandGunItem "muzzle_snds_acp";
		//Primary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		_player addPrimaryWeaponItem "";
		//Secondary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		//Grenades
		_player addMagazines ["MiniGrenade", 1];
		//Select Active Weapon
		_player selectWeapon "hgun_Pistol_heavy_01_F";
		//Misc Items
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem ""; //Add to inventory if there is space
	};
	case 10:
	{
		_player addBackpack "B_Carryall_cbr";
		if (["_diver_", typeOf _player] call fn_findString != -1) then {} else 
		{
			_player addVest "V_PlateCarrierGL_rgr";
			_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
		};
		//Slotted Items
		_player addWeapon "Rangefinder"; //Binocular "Rangefinder", "Binocular"
		_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
		_player linkItem "ItemGPS"; //GPS, "ItemGPS"
		_player addHeadgear "H_HelmetSpecB_paint2"; //Hat or helmet. Overwrites, add as item if you want it a an extra item
		//Handgun
		_player addMagazines ["11Rnd_45ACP_Mag", 4];
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addhandGunItem "optic_MRD";
		_player addhandGunItem "muzzle_snds_acp";
		//Primary Weapon
		_player addMagazines ["30Rnd_45ACP_Mag_SMG_01", 4];
		_player addWeapon "SMG_01_F";
		_player addPrimaryWeaponItem "optic_Aco_smg";
		_player addPrimaryWeaponItem "muzzle_snds_acp";
		_player addPrimaryWeaponItem "";
		//Secondary Weapon
		_player addMagazines ["", 0];
		_player addWeapon "";
		//Grenades
		_player addMagazines ["MiniGrenade", 3];
		//Select Active Weapon
		_player selectWeapon "SMG_01_F";
		//Misc Items
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem "FirstAidKit"; //Add to inventory if there is space
		_player addItem ""; //Add to inventory if there is space
	};
	default 
	{
		_player addBackpack "B_AssaultPack_rgr";
		_player addMagazines ["16Rnd_9x21_Mag", 4];
		_player addWeapon "hgun_P07_F";
		_player addMagazines ["Chemlight_yellow", 4];
		_player addItem "FirstAidKit";
		_player selectWeapon "hgun_P07_F";
	};
	
};
 //Cael817, End
switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player removeItem "FirstAidKit";
		_player addItem "Medikit";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "MineDetector";
		_player addItem "Toolkit";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Rangefinder";
	};
};

if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
