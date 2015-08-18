/************************
 *       Medic Kit      *
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
	
_crate  = createVehicle ["Box_NATO_Wps_F",getpos player,[],0,"" ];
_crate setpos  (player modelToWorld [0,5,0]);
_crate setDir ([_crate, player] call BIS_fnc_dirTo);
clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;
_crate allowDamage false;

	_crate addWeaponCargoGlobal   ["hgun_Rook40_snds_F",1];
	_crate addWeaponCargoGlobal   ["SMG_01_Holo_pointer_snds_F",1];
	_crate addWeaponCargoGlobal   ["arifle_Katiba_ARCO_pointer_snds_F",1];

	_crate addMagazineCargoGlobal ["30Rnd_9x21_Mag",3];
	_crate addMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01_tracer_green",5];
	_crate addMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01",5];
	_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer",5];
	_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_green",5];
	_crate addMagazineCargoGlobal ["HandGrenade",3];
	
	_crate addItemCargoGlobal     ["Rangefinder",1];
	_crate addItemCargoGlobal     ["ItemGPS",1];
	_crate addItemCargoGlobal     ["ItemWatch",1];
	_crate addItemCargoGlobal     ["EpochRadio0",1];
	_crate addItemCargoGlobal     ["ItemCompass",1];
    _crate addItemCargoGlobal     ["NVG_EPOCH",1];
	
    _crate addItemCargoGlobal     ["U_O_PilotCoveralls",1];
    _crate addItemCargoGlobal     ["U_O_CombatUniform_ocamo",1];
    _crate addItemCargoGlobal     ["U_Camo_Uniform",1];
	_crate addItemCargoGlobal     ["H_12_EPOCH",1];
	_crate addItemCargoGlobal     ["H_13_EPOCH",1];
	_crate addItemCargoGlobal     ["V6_EPOCH",1];
	_crate addItemCargoGlobal     ["V17_EPOCH",1];

	_crate addItemCargoGlobal     ["Medikit",1];
	_crate addItemCargoGlobal     ["FAK",10];
	_crate addItemCargoGlobal     ["Towelette",5];
	_crate addItemCargoGlobal     ["HeatPack",5];
	_crate addItemCargoGlobal     ["ColdPack",5];
	_crate addItemCargoGlobal     ["EnergyPack",3];
	
	_crate addItemCargoGlobal     ["CookedSheep_EPOCH",2];
    _crate addItemCargoGlobal     ["ItemSodaRbull",2];
	_crate addItemCargoGlobal     ["ItemSodaPurple",1];

	_crate addBackpackCargoGlobal ["B_Carryall_mcamo",1];
	_crate addBackpackCargoGlobal ["B_Carryall_cbr",1];
	
} 
	
else
{ 
	['You need 300 Krypto to purchase the Combat Medic Kit',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
