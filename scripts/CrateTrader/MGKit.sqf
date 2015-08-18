/************************
 *        MG Kit        *
 *     Crate Trader     *
 *  by BoleParty[TGM]   *
 *tacongamingmilitia.com*
 ************************/
private["_crate"];
_crate = _this select 0;

if (EPOCH_playerCrypto > 375)

then 
{   titleText ["375 Krypto removed from your pocket!", "PLAIN DOWN"];
    EPOCH_playerCrypto = EPOCH_playerCrypto -375;
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

	_crate addWeaponCargoGlobal   ["hgun_ACPC2_snds_F",1];
	_crate addWeaponCargoGlobal   ["arifle_MX_SW_F",1];
	_crate addWeaponCargoGlobal   ["LMG_Mk200_MRCO_F",1];
	_crate addWeaponCargoGlobal   ["LMG_Zafir_ARCO_F",1];

	_crate addMagazineCargoGlobal ["9Rnd_45ACP_Mag",4];
	_crate addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag",3];
	_crate addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_Tracer",3];
	_crate addMagazineCargoGlobal ["200Rnd_65x39_cased_Box",3];
	_crate addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer",3];
	_crate addMagazineCargoGlobal ["150Rnd_762x54_Box",3];
	_crate addMagazineCargoGlobal ["150Rnd_762x54_Box_Tracer",3];
	_crate addMagazineCargoGlobal ["HandGrenade",3];
	
	_crate addItemCargoGlobal     ["Rangefinder",1];
	_crate addItemCargoGlobal     ["ItemGPS",1];
	_crate addItemCargoGlobal     ["ItemWatch",1];
	_crate addItemCargoGlobal     ["EpochRadio0",1];
	_crate addItemCargoGlobal     ["ItemCompass",1];
    _crate addItemCargoGlobal     ["NVG_EPOCH",1];
	
	_crate addItemCargoGlobal     ["muzzle_snds_H_MG",1];
	_crate addItemCargoGlobal     ["muzzle_snds_H_SW",1];
	
	_crate addItemCargoGlobal     ["U_O_PilotCoveralls",1];
	_crate addItemCargoGlobal     ["U_O_CombatUniform_ocamo",1];
    _crate addItemCargoGlobal     ["U_Camo_Uniform",1];
	_crate addItemCargoGlobal     ["V_12_EPOCH",1];
	_crate addItemCargoGlobal     ["V_23_EPOCH",1];
	_crate addItemCargoGlobal     ["H_6_EPOCH",1];
	_crate addItemCargoGlobal     ["H_45_EPOCH",1];
	
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
	['You need 375 Krypto to purchase the MG Kit',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
