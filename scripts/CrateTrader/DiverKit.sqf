/************************
 *      Diver Kit       *
 *     Crate Trader     *
 *  by BoleParty[TGM]   *
 *tacongamingmilitia.com*
 ************************/
private["_crate"];
_crate = _this select 0;

if (EPOCH_playerCrypto > 350)

then 
{   titleText ["350 Krypto removed from your pocket!", "PLAIN DOWN"];
    EPOCH_playerCrypto = EPOCH_playerCrypto -350;
	sleep 1;
    ['The crate wont persist over a server restart!',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
_crate  = createVehicle ["Box_NATO_Wps_F",getpos player,[],0,"" ];
_crate setpos  (player modelToWorld [0,5,0]);
_crate setDir ([_crate, player] call BIS_fnc_dirTo);
clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;
_crate allowDamage false;  

	_crate addWeaponCargoGlobal   ["hgun_PDW2000_Holo_snds_F",1];
	_crate addWeaponCargoGlobal   ["arifle_MXC_Holo_pointer_snds_F",1];
	_crate addWeaponCargoGlobal   ["Speargun_EPOCH",1];
	_crate addWeaponCargoGlobal   ["arifle_SDAR_F",1];

	_crate addMagazineCargoGlobal ["30Rnd_9x21_Mag",3];
	_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag",3];
	_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",3];
	_crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Green",3];
	_crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag",3];
	_crate addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",4];
	_crate addMagazineCargoGlobal ["spear_magazine",20];
	_crate addMagazineCargoGlobal ["HandGrenade",3];
	
	_crate addItemCargoGlobal     ["optic_MRCO",1];
	_crate addItemCargoGlobal     ["Rangefinder",1];
	_crate addItemCargoGlobal     ["ItemGPS",1];
	_crate addItemCargoGlobal     ["ItemWatch",1];
	_crate addItemCargoGlobal     ["EpochRadio0",1];
	_crate addItemCargoGlobal     ["ItemCompass",1];
    _crate addItemCargoGlobal     ["NVG_EPOCH",1];
	
	_crate addItemCargoGlobal     ["U_Wetsuit_uniform",1];
	_crate addItemCargoGlobal     ["U_O_Wetsuit",1];
	_crate addItemCargoGlobal     ["V_20_EPOCH",1];
	_crate addItemCargoGlobal     ["V_20_EPOCH",1];
	_crate addItemCargoGlobal     ["G_Diving",2];

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
	['You need 350 Krypto to purchase the Diver Kit',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
