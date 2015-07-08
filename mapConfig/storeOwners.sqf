// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 6, 240, []],
	["GenStore2", 6, 250, []],
	["GenStore3", 6, 45, []],
	["GenStore4", 0, 265, []],
	["GenStore5", 5, 350, []],

	["GunStore1", 1, 0, []],
	["GunStore2", 1, 75, []],
	["GunStore3", 6, 135, []],
	["GunStore4", 1, 65, []],
	["GunStore5", 4, 22, []],

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", 1, 75, ["Planes", "Tanks"]],
	["VehStore2", 6, 45, ["Boats", "Planes", "Tanks"]],
	["VehStore3", 4, 250, ["Boats", "Planes", "Tanks"]],
	["VehStore4", 5, 155, ["Boats", "Planes", "Tanks"]],
	["VehStore5", 0, 190, ["Planes", "Tanks"]],
	["VehStore6", 0, 22, ["Planes", "Tanks"]]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore2", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore3", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore5", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],

	["GunStore1", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],
	["GunStore2", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],
	["GunStore3", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],
	["GunStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],
	["GunStore5", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],

	["VehStore1", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore2", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore3", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore4", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore5", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore6", [["weapon", ""], ["uniform", "U_Competitor"]]]
];
