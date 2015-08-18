/************************
 *      Sniper Kit      *
 *     Crate Trader     *
 *  by BoleParty[TGM]   *
 *tacongamingmilitia.com*
 ************************/
private["_crate"];
_crate = _this select 0;

if (EPOCH_playerCrypto > 300)

then 
{   titleText ["300 Krypto removed from your pocket!", "PLAIN DOWN"];
    EPOCH_playerCrypto = EPOCH_playerCrypto -300;
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

    _crate addWeaponCargoGlobal   ["hgun_Pistol_heavy_01_snds_F",1];
	_crate addWeaponCargoGlobal   ["hgun_PDW2000_Holo_snds_F",1];
	_crate addWeaponCargoGlobal   ["srifle_GM6_camo_LRPS_F",1];
	_crate addWeaponCargoGlobal   ["srifle_LRR_camo_LRPS_F",1];

	_crate addMagazineCargoGlobal ["11Rnd_45ACP_Mag",2];
	_crate addMagazineCargoGlobal ["30Rnd_9x21_Mag",3];
	_crate addMagazineCargoGlobal ["5Rnd_127x108_Mag",5];
	_crate addMagazineCargoGlobal ["5Rnd_127x108_APDS_Mag",3];
	_crate addMagazineCargoGlobal ["7Rnd_408_Mag",7];
	_crate addMagazineCargoGlobal ["HandGrenade",3];
	
    _crate addItemCargoGlobal     ["optic_MRD",1];
	_crate addItemCargoGlobal     ["optic_Nightstalker",1];
	
	_crate addItemCargoGlobal     ["Rangefinder",1];
	_crate addItemCargoGlobal     ["ItemGPS",1];
	_crate addItemCargoGlobal     ["ItemWatch",1];
	_crate addItemCargoGlobal     ["EpochRadio0",1];
	_crate addItemCargoGlobal     ["ItemCompass",1];
    _crate addItemCargoGlobal     ["NVG_EPOCH",1];
	
	_crate addItemCargoGlobal     ["V_24_EPOCH",1];
	_crate addItemCargoGlobal     ["V_27_EPOCH",1];
	_crate addItemCargoGlobal     ["V_F0_EPOCH",1];
	
	_crate addItemCargoGlobal     ["U_O_FullGhillie_lsh",1];
	_crate addItemCargoGlobal     ["U_O_GhillieSuit",1];
	_crate addItemCargoGlobal     ["U_ghillie1_uniform",1];
	
	_crate addItemCargoGlobal     ["FAK",2];
	_crate addItemCargoGlobal     ["Towelette",2];
	_crate addItemCargoGlobal     ["HeatPack",2];
	_crate addItemCargoGlobal     ["ColdPack",2];
	_crate addItemCargoGlobal     ["EnergyPack",2];
	
	_crate addItemCargoGlobal     ["CookedSheep_EPOCH",2];
    _crate addItemCargoGlobal     ["ItemSodaRbull",2];
	_crate addItemCargoGlobal     ["ItemSodaPurple",1];
	
	_crate addBackpackCargoGlobal ["B_Carryall_mcamo",1];
	_crate addBackpackCargoGlobal ["B_Carryall_cbr",1];
	
} 
	
else
{ 
	['You need 300 Krypto to purchase the Sniper Kit',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
	
