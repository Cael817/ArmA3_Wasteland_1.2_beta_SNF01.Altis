/*
Add Script to individual units spawned by COS.
_unit = unit. Refer to Unit as _unit.
*/
_uniformTypes = ["U_B_CombatUniform_mcam_vest", "U_B_CombatUniform_mcam_tshirt" ,"U_B_CombatUniform_mcam"];
_vestTypes = ["V_PlateCarrier1_rgr","V_PlateCarrier2_rgr"];
_weaponTypes = ["arifle_TRG20_F","LMG_Mk200_F","arifle_MXM_F","arifle_MX_GL_F"];

_unit =(_this select 0);
//_unit addAction ["Hello", {hint "Open AddScript_Unit.sqf to apply pedestrian scripts"}];// EXAMPLE SCRIPT

_unit addUniform (_uniformTypes call BIS_fnc_selectRandom);
_unit addVest (_vestTypes call BIS_fnc_selectRandom);
_unit addMagazines ["SmokeShell", 1];
[_unit, _weaponTypes call BIS_fnc_selectRandom, 3] call BIS_fnc_addWeapon;

_unit spawn refillPrimaryAmmo;
_unit call setMissionSkill;
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addMagazines ["SmokeShell", 1];
_unit enablegunlights "forceOn";
_unit addRating 9999; //Negative value seem to get em attack each other =) but also causes errors? =(

_unit addEventHandler ["Killed", server_playerDied];