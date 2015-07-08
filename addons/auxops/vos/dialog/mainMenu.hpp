// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
#define VOS_Menu_dialog 17100
#define VOS_Menu_option 17101

class VOS_Menu
{
	idd = VOS_Menu_dialog;
	movingEnable=1;
	onLoad = "uiNamespace setVariable ['VOS_Menu', _this select 0]";

	class controlsBackground {

		class VOS_Menu_background:w_RscPicture
		{
			idc=-1;
			colorText[] = {1, 1, 1, 1};
			colorBackground[] = {0,0,0,0};
			text = "#(argb,8,8,3)color(0,0,0,0.6)";
			x=0.28;
			y=0.10;
			w=0.3505;
			h=0.70;
		};

		class TopBar: w_RscPicture
		{
			idc = -1;
			colorText[] = {1, 1, 1, 1};
			colorBackground[] = {0,0,0,0};
			text = "#(argb,8,8,3)color(0.25,0.51,0.96,0.8)";

			x=0.28;
			y=0.10;
			w=0.3505;
			h=0.05;
		};

		class VOS_Menu_Title:w_RscText
		{
			idc=-1;
			text="Vehicle Operations Menu";
			x=0.29;
			y=0.108;
			w=0.200;
			h=0.035;
		};
	};

	class controls {

		class VOS_Menu_options:w_Rsclist
		{
			idc = VOS_Menu_option;
			x=0.30;
			y=0.18;
			w=0.31;
			h=0.49;
		};

		class VOS_Menu_activate:w_RscButton
		{
			idc=-1;
			text="Select";
			onButtonClick = "[1] execVM 'addons\AUXOPS\VOS\optionSelect.sqf'";
			x=0.345;
			y=0.70;
			w=0.22;
			h=0.071;
		};
	};
};

