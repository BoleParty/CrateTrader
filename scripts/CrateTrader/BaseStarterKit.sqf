/************************
 *    Base Starter Kit  *
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

    _crate addItemCargoGlobal    	  ["ChainSaw",1];
	_crate addItemCargoGlobal    	  ["ItemMixOil",2];
	_crate addItemCargoGlobal   	  ["MultiGun",1];
	_crate addItemCargoGlobal 		  ["Heal_EPOCH",1];
	_crate addItemCargoGlobal 		  ["Defib_EPOCH",1];
	_crate addItemCargoGlobal 		  ["Repair_EPOCH",1];
	_crate addItemCargoGlobal   	  ["jerrycan_epoch",2];
	_crate addItemCargoGlobal   	  ["EnergyPackLg",3];
	_crate addItemCargoGlobal   	  ["ItemLockbox",2];
	_crate addItemCargoGlobal		  ["lighter_epoch",2];	
	_crate addItemCargoGlobal   	  ["PaintCanBlk",3];
	_crate addItemCargoGlobal   	  ["PaintCanBlu",3];
	_crate addItemCargoGlobal   	  ["PaintCanBrn",3];
	_crate addItemCargoGlobal    	  ["PaintCanGrn",3];
	_crate addItemCargoGlobal    	  ["PaintCanOra",3];
	_crate addItemCargoGlobal    	  ["PaintCanPur",3];
	_crate addItemCargoGlobal     	  ["PaintCanRed",3];
	_crate addItemCargoGlobal    	  ["PaintCanTeal",3];
	_crate addItemCargoGlobal   	  ["PaintCanYel",3];
    _crate addItemCargoGlobal    	  ["CinderBlocks",30];
	_crate addItemCargoGlobal     	  ["MortarBucket",10];
	_crate addItemCargoGlobal         ["ItemScraps",15];
	_crate addItemCargoGlobal    	  ["ItemCorrugated",10];
	_crate addItemCargoGlobal    	  ["ItemCorrugatedLg",5];
	_crate addItemCargoGlobal         ["PartPlankPack",15];
	_crate addItemCargoGlobal      	  ["WoodLog_EPOCH",20];
	_crate addItemCargoGlobal     	  ["KitStudWall",8];
	_crate addItemCargoGlobal    	  ["KitWoodFloor",8];
	_crate addItemCargoGlobal    	  ["KitWoodStairs",2];
	_crate addItemCargoGlobal    	  ["KitWoodRamp",1];
	_crate addItemCargoGlobal     	  ["KitFoundation",3];
	_crate addItemCargoGlobal 	 	  ["KitFirePlace",1];
	_crate addItemCargoGlobal 	 	  ["KitCinderWalls",25];
	_crate addItemCargoGlobal 	 	  ["KitTiPi",2];
	_crate addItemCargoGlobal 	 	  ["KitShelf",2];	
	_crate addItemCargoGlobal     	  ["JackKit",1];
	_crate addItemCargoGlobal     	  ["KitPlotPole",1];
	_crate addItemCargoGlobal         ["VehicleRepair",1];
	_crate addBackpackCargoGlobal     ["B_Carryall_mcamo",1];
	_crate addBackpackCargoGlobal     ["B_Carryall_ocamo",1];
	
} 
	
else
{ 
	['You need 350 Krypto to purchase the Base Starter Kit',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
