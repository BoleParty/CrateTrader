/************************
 *    Supply Crate      *
 *    Crate Trader      *
 *  by BoleParty[TGM]   *
 *tacongamingmilitia.com*
 ************************/
private["_crate"];
_crate = _this select 0;

if (EPOCH_playerCrypto > 600)

then 
{   titleText ["600 Krypto removed from your pocket!", "PLAIN DOWN"];
    EPOCH_playerCrypto = EPOCH_playerCrypto -600;
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


	_crate addItemCargoGlobal     ["Rangefinder",5];
	_crate addItemCargoGlobal     ["ItemGPS",5];
	_crate addItemCargoGlobal     ["ItemWatch",5];
	_crate addItemCargoGlobal     ["EpochRadio0",5];
	_crate addItemCargoGlobal     ["ItemCompass",5];
    _crate addItemCargoGlobal     ["NVG_EPOCH",5];
	
    _crate addItemCargoGlobal     ["FAK",20];
	_crate addItemCargoGlobal     ["Towelette",15];
	_crate addItemCargoGlobal     ["HeatPack",15];
	_crate addItemCargoGlobal     ["ColdPack",15];
	_crate addItemCargoGlobal     ["EnergyPack",25];
    _crate addItemCargoGlobal     ["EnergyPackLG",5];
	
	_crate addItemCargoGlobal     ["ItemSodaOrangeSherbet",8];
	_crate addItemCargoGlobal     ["ItemSoda",8];
	_crate addItemCargoGlobal     ["ItemSoda",8];
	_crate addItemCargoGlobal     ["ItemSoda",8];
	_crate addItemCargoGlobal     ["FoodWalkNSons",8];
	
	_crate addItemCargoGlobal     ["FoodMeeps",10];
	_crate addItemCargoGlobal     ["FoodSnooter",10];
	_crate addItemCargoGlobal     ["FoodBioMeat",10];
	
	_crate addItemCargoGlobal     ["RabbitCarcass_EPOCH",8];
	_crate addItemCargoGlobal     ["ChickenCarcass_EPOCH",9];
	_crate addItemCargoGlobal     ["GoatCarcass_EPOCH",9];
	_crate addItemCargoGlobal     ["SheepCarcass_EPOCH",9];

	_crate addItemCargoGlobal     ["KitFirePlace",7];

	_crate addItemCargoGlobal     ["Chemlight_green",6];
	_crate addItemCargoGlobal     ["Chemlight_blue",6];

	_crate addBackpackCargoGlobal ["B_Carryall_mcamo",3];
	_crate addBackpackCargoGlobal ["B_Carryall_cbr",3];
	
} 
	
else
{ 
	['You need 600 Krypto to purchase the Supply Crate',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
