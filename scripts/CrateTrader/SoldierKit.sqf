/************************
 *    Soldier Kit       *
 *     Crate Trader     *
 *  by BoleParty[TGM]   *
 *tacongamingmilitia.com*
 ************************/
private["_crate"];
_crate = _this select 0;

if (EPOCH_playerCrypto > 200)

then 
{   titleText ["200 Krypto removed from your pocket!", "PLAIN DOWN"];
    EPOCH_playerCrypto = EPOCH_playerCrypto -200;
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

    _crate addWeaponCargoGlobal   ["hgun_P07_snds_F",1];
	_crate addWeaponCargoGlobal   ["SMG_02_ARCO_pointg_F",1];
    _crate addWeaponCargoGlobal   ["arifle_MX_GL_Holo_pointer_snds_F",1];
	_crate addWeaponCargoGlobal   ["srifle_EBR_ARCO_pointer_snds_F",1];

	_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag",5];
	_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",5];
	_crate addMagazineCargoGlobal ["30Rnd_9x21_Mag",5];
	_crate addMagazineCargoGlobal ["20Rnd_762x51_Mag",5];
	
	_crate addMagazineCargoGlobal ["3Rnd_HE_Grenade_shell",3];
	_crate addMagazineCargoGlobal ["3Rnd_UGL_FlareWhite_F",3];
	_crate addMagazineCargoGlobal ["3Rnd_Smoke_Grenade_shell",3];
	
	_crate addMagazineCargoGlobal ["HandGrenade",3];
	_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Ammo",2];
	_crate addMagazineCargoGlobal ["APERSMine_Range_Ammo",2];	
	
	_crate addItemCargoGlobal     ["optic_NVS",1];
	
	_crate addItemCargoGlobal     ["Rangefinder",1];
	_crate addItemCargoGlobal     ["ItemGPS",1];
	_crate addItemCargoGlobal     ["ItemWatch",1];
	_crate addItemCargoGlobal     ["EpochRadio0",1];
	_crate addItemCargoGlobal     ["ItemCompass",1];
    _crate addItemCargoGlobal     ["NVGoggles",1];
	
	_crate addItemCargoGlobal     ["H_2_EPOCH",1];
	_crate addItemCargoGlobal     ["H_28_EPOCH",1];
	_crate addItemCargoGlobal     ["H_46_EPOCH",1];
	_crate addItemCargoGlobal     ["V_15_EPOCH",1];
	_crate addItemCargoGlobal     ["V_25_EPOCH",1];
	_crate addItemCargoGlobal     ["U_Camo_Uniform",1];
	_crate addItemCargoGlobal     ["U_CamoBrn_Uniform",1];
    _crate addItemCargoGlobal     ["U_O_CombatUniform_ocamo",1];
	_crate addItemCargoGlobal     ["U_O_pilotCoveralls",1];
	
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
	['You need 200 Krypto to purchase the Soldier Kit',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
