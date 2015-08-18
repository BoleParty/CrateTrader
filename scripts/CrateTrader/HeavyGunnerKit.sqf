/************************
 *   Heavy Gunner Kit   *
 *     Crate Trader     *
 *  by BoleParty[TGM]   *
 *tacongamingmilitia.com*
 ************************/
private["_crate"];
_crate = _this select 0;

if (EPOCH_playerCrypto > 1250)

then 
{   titleText ["1250 Krypto removed from your pocket!", "PLAIN DOWN"];
    EPOCH_playerCrypto = EPOCH_playerCrypto -1250;
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
	_crate addWeaponCargoGlobal   ["hgun_PDW2000_Holo_snds_F",2];
	_crate addWeaponCargoGlobal   ["MMG_01_tan_F",2];
	_crate addWeaponCargoGlobal   ["MMG_01_hex_ARCO_LP_F",2];
	_crate addWeaponCargoGlobal   ["MMG_02_sand_RCO_LP_F",2];
 	_crate addWeaponCargoGlobal   ["MMG_02_camo_F",2];

	_crate addMagazineCargoGlobal ["11Rnd_45ACP_Mag",10];
	_crate addMagazineCargoGlobal ["6Rnd_45ACP_Cylinder",10];
	_crate addMagazineCargoGlobal ["30Rnd_9x21_Mag",10];
	_crate addMagazineCargoGlobal ["150Rnd_93x64_Mag",10];
	_crate addMagazineCargoGlobal ["130Rnd_338_Mag",10];
	_crate addMagazineCargoGlobal ["HandGrenade",10];
	_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Ammo",3];
	_crate addMagazineCargoGlobal ["APERSMine_Range_Ammo",3];
	
	_crate addItemCargoGlobal     ["Rangefinder",3];
	_crate addItemCargoGlobal     ["ItemGPS",3];
	_crate addItemCargoGlobal     ["ItemWatch",2];
	_crate addItemCargoGlobal     ["EpochRadio0",2];
	_crate addItemCargoGlobal     ["ItemCompass",2];
    _crate addItemCargoGlobal     ["NVG_EPOCH",3];
	
	_crate addItemCargoGlobal     ["U_O_PilotCoveralls",2];
	_crate addItemCargoGlobal     ["U_O_CombatUniform_ocamo",2];
    _crate addItemCargoGlobal     ["U_Camo_Uniform",2];
	
	_crate addItemCargoGlobal    ["H_36_EPOCH",2];
	_crate addItemCargoGlobal    ["H_6_EPOCH",2];
	_crate addItemCargoGlobal    ["H_10_EPOCH",2];
	_crate addItemCargoGlobal    ["V_9_EPOCH",2];
	_crate addItemCargoGlobal    ["V_35_EPOCH",2];
	
	_crate addItemCargoGlobal     ["optic_MRCO",3];
	_crate addItemCargoGlobal     ["optic_SOS",3];
	_crate addItemCargoGlobal     ["acc_flashlight",3];
	_crate addItemCargoGlobal     ["acc_pointer_IR",3];
	
	_crate addItemCargoGlobal     ["FAK",8];
	_crate addItemCargoGlobal     ["Towelette",5];
	_crate addItemCargoGlobal     ["HeatPack",5];
	_crate addItemCargoGlobal     ["ColdPack",5];
	_crate addItemCargoGlobal     ["EnergyPackLg",5];
	
	_crate addItemCargoGlobal     ["CookedSheep_EPOCH",3];
    _crate addItemCargoGlobal     ["ItemSodaRbull",3];
	_crate addItemCargoGlobal     ["ItemSodaPurple",3];

	_crate addBackpackCargoGlobal ["B_Carryall_mcamo",2];
	_crate addBackpackCargoGlobal ["B_Carryall_cbr",2];

	
	
	sleep 1;
    ['The crate wont persist over a server restart!',0,0.7,5,0] spawn bis_fnc_dynamictext;
} 
	
else
{ 
	['You need 1250 Krypto to purchase the Heavy Gunner Kit Kit',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
}; 
