/************************
 *   Elite Sniper Kit   *
 *     Crate Trader     *
 *  by BoleParty[TGM]   *
 *tacongamingmilitia.com*
 ************************/
private["_crate"];
_crate = _this select 0;

if (EPOCH_playerCrypto > 1200)

then 
{   titleText ["1200 Krypto removed from your pocket!", "PLAIN DOWN"];
    EPOCH_playerCrypto = EPOCH_playerCrypto -1200;
	sleep 2;
    ['The crate wont persist over a server restart!',0,0.7,4,0] spawn bis_fnc_dynamictext;
	
_crate  = createVehicle ["Box_NATO_Wps_F",getpos player,[],0,"" ];
_crate setpos  (player modelToWorld [0,5,0]);
_crate setDir ([_crate, player] call BIS_fnc_dirTo);
clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;
_crate allowDamage false;  

	_crate addWeaponCargoGlobal   ["hgun_Pistol_heavy_02_Yorris_F",2];
	_crate addWeaponCargoGlobal   ["hgun_Pistol_heavy_01_snds_F",2];
	_crate addWeaponCargoGlobal   ["srifle_DMR_02_F",2];
	_crate addWeaponCargoGlobal   ["srifle_DMR_03_multicam_F",2];
	_crate addWeaponCargoGlobal   ["srifle_DMR_04_Tan_F",2];
	_crate addWeaponCargoGlobal   ["srifle_DMR_05_hex_F",2];
	_crate addWeaponCargoGlobal   ["srifle_DMR_06_camo_F",2];

	_crate addMagazineCargoGlobal ["6Rnd_45ACP_Cylinder",6];
	_crate addMagazineCargoGlobal ["11Rnd_45ACP_Mag",6];
	_crate addMagazineCargoGlobal ["10Rnd_338_Mag",10];
	_crate addMagazineCargoGlobal ["20Rnd_762x51_Mag",20];
	_crate addMagazineCargoGlobal ["10Rnd_127x54_Mag",10];
	_crate addMagazineCargoGlobal ["10Rnd_93x64_DMR_05_Mag",10];
	
	_crate addMagazineCargoGlobal ["HandGrenade",8];
	_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Ammo",3];
	_crate addMagazineCargoGlobal ["APERSMine_Range_Ammo",3];
	
	_crate addItemCargoGlobal     ["Rangefinder",2];
	_crate addItemCargoGlobal     ["ItemGPS",2];
	_crate addItemCargoGlobal     ["ItemWatch",2];
	_crate addItemCargoGlobal     ["EpochRadio0",2];
	_crate addItemCargoGlobal     ["ItemCompass",2];
    _crate addItemCargoGlobal     ["NVG_EPOCH",2];
	
	_crate addItemCargoGlobal     ["muzzle_snds_338_sand",2];
	_crate addItemCargoGlobal     ["muzzle_snds_B",2];
	_crate addItemCargoGlobal     ["muzzle_snds_93mmg_tan",2];
	
	_crate addItemCargoGlobal     ["bipod_01_F_snd",1];
	_crate addItemCargoGlobal     ["bipod_01_F_mtp",1];
	_crate addItemCargoGlobal     ["bipod_03_F_oli",1];
	
	_crate addItemCargoGlobal     ["optic_AMS_snd",1];
	_crate addItemCargoGlobal     ["optic_AMS_khk",1];
	_crate addItemCargoGlobal     ["optic_MRD",1];	
	_crate addItemCargoGlobal     ["optic_LRPS",1];
	_crate addItemCargoGlobal     ["optic_Nightstalker",1];
	_crate addItemCargoGlobal     ["optic_NVS",1];
	_crate addItemCargoGlobal     ["optic_MRCO",1];
	_crate addItemCargoGlobal     ["optic_SOS",1];
	
	_crate addItemCargoGlobal     ["acc_flashlight",2];
	_crate addItemCargoGlobal     ["acc_pointer_IR",2];
	
	_crate addItemCargoGlobal     ["FAK",5];
	_crate addItemCargoGlobal     ["Towelette",3];
	_crate addItemCargoGlobal     ["HeatPack",3];
	_crate addItemCargoGlobal     ["ColdPack",3];
	_crate addItemCargoGlobal     ["EnergyPackLg",5];
	
	_crate addItemCargoGlobal    ["H_6_EPOCH",1];
	_crate addItemCargoGlobal    ["H_10_EPOCH",1];
	
	_crate addItemCargoGlobal    ["V_9_EPOCH",1];
	_crate addItemCargoGlobal    ["V_35_EPOCH",1];
	
	_crate addItemCargoGlobal     ["U_O_FullGhillie_lsh",2];
	_crate addItemCargoGlobal     ["U_O_FullGhillie_ard",2];
	_crate addItemCargoGlobal     ["U_O_FullGhillie_sard",2];
	_crate addItemCargoGlobal     ["U_O_GhillieSuit",2];
	_crate addItemCargoGlobal     ["U_ghillie1_uniform",2];
	_crate addItemCargoGlobal     ["U_ghillie2_uniform",2];
	_crate addItemCargoGlobal     ["U_ghillie3_uniform",2];
	
	_crate addItemCargoGlobal     ["CookedSheep_EPOCH",6];
    _crate addItemCargoGlobal     ["ItemSodaRbull",3];
	_crate addItemCargoGlobal     ["ItemSodaPurple",3];

	_crate addBackpackCargoGlobal ["B_Carryall_mcamo",2];
	_crate addBackpackCargoGlobal ["B_Carryall_cbr",2];
	
	
	sleep 1;
    ['The crate wont persist over a server restart!',0,0.7,5,0] spawn bis_fnc_dynamictext;
} 
	
else
{ 
	['You need 1200 Krypto to purchase the Elite Sniper Kit',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
