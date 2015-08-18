/************************
 *       Demo Kit       *
 *     Crate Trader     *
 *  by BoleParty[TGM]   *
 *tacongamingmilitia.com*
 ************************/
private["_crate"];
_crate = _this select 0;

if (EPOCH_playerCrypto > 1000)

then 
{   titleText ["1000 Krypto removed from your pocket!", "PLAIN DOWN"];
    EPOCH_playerCrypto = EPOCH_playerCrypto -1000;
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

	_crate addWeaponCargoGlobal   ["launch_NLAW_F",2];
	_crate addWeaponCargoGlobal   ["launch_RPG32_F",2];
	_crate addWeaponCargoGlobal   ["launch_Titan_F",2];
	_crate addWeaponCargoGlobal   ["launch_Titan_short_F",2];

	_crate addMagazineCargoGlobal ["NLAW_F",5];
	_crate addMagazineCargoGlobal ["RPG32_F",5];
	_crate addMagazineCargoGlobal ["RPG32_HE_F",5];
	_crate addMagazineCargoGlobal ["Titan_AA",5];
	_crate addMagazineCargoGlobal ["Titan_AT",5];
	_crate addMagazineCargoGlobal ["Titan_AP",5];
	_crate addMagazineCargoGlobal ["ATMine_Range_Ammo",5];
	_crate addMagazineCargoGlobal ["APERSMine_Range_Ammo",5];
	_crate addMagazineCargoGlobal ["APERSBoundingMine_Range_Ammo",5];
    _crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Ammo",5];
	_crate addMagazineCargoGlobal ["APERSTripMine_Wire_Ammo",5];
	_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Ammo",5];
	_crate addMagazineCargoGlobal ["SatchelCharge_Remote_Ammo",5];
	_crate addMagazineCargoGlobal ["DemoCharge_Remote_Ammo",5];
	_crate addMagazineCargoGlobal ["HandGrenade",15];
	
	_crate addBackpackCargoGlobal ["B_Carryall_mcamo",2];
	_crate addBackpackCargoGlobal ["B_Carryall_cbr",2];

} 
	
else
{ 
	['You need 1000 Krypto to purchase the Demolition Kit',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
