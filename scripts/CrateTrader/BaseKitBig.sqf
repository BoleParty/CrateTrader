/************************
 *     Base Kit Big     *
 *     Crate Trader     *
 *  by BoleParty[TGM]   *
 *tacongamingmilitia.com*
 ************************/
private["_crate"];
_crate = _this select 0;

if (EPOCH_playerCrypto > 800)

then 
{   titleText ["800 Krypto removed from your pocket!", "PLAIN DOWN"];
    EPOCH_playerCrypto = EPOCH_playerCrypto -800;
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

   _crate addItemCargoGlobal    	  ["ChainSaw",2];
	_crate addItemCargoGlobal    	  ["ItemMixOil",6];
	_crate addItemCargoGlobal   	  ["MultiGun",3];
	_crate addItemCargoGlobal 		  ["Heal_EPOCH",3];
	_crate addItemCargoGlobal 		  ["Defib_EPOCH",3];
	_crate addItemCargoGlobal 		  ["Repair_EPOCH",3];
	_crate addItemCargoGlobal   	  ["jerrycan_epoch",6];
	_crate addItemCargoGlobal   	  ["EnergyPackLg",7];
	_crate addItemCargoGlobal   	  ["ItemLockbox",5];
	_crate addItemCargoGlobal		  ["lighter_epoch",2];
	_crate addItemCargoGlobal   	  ["PaintCanBlk",10];
	_crate addItemCargoGlobal   	  ["PaintCanBlu",10];
	_crate addItemCargoGlobal   	  ["PaintCanBrn",10];
	_crate addItemCargoGlobal    	  ["PaintCanGrn",10];
	_crate addItemCargoGlobal    	  ["PaintCanOra",10];
	_crate addItemCargoGlobal    	  ["PaintCanPur",10];
	_crate addItemCargoGlobal     	  ["PaintCanRed",10];
	_crate addItemCargoGlobal    	  ["PaintCanTeal",10];
	_crate addItemCargoGlobal   	  ["PaintCanYel",10];
    _crate addItemCargoGlobal    	  ["CinderBlocks",60];
	_crate addItemCargoGlobal     	  ["MortarBucket",25];
	_crate addItemCargoGlobal         ["ItemScraps",30];
	_crate addItemCargoGlobal    	  ["ItemCorrugated",40];
	_crate addItemCargoGlobal    	  ["ItemCorrugatedLg",20];
	_crate addItemCargoGlobal         ["PartPlankPack",50];
	_crate addItemCargoGlobal      	  ["WoodLog_EPOCH",50];
	_crate addItemCargoGlobal     	  ["KitStudWall",30];
	_crate addItemCargoGlobal    	  ["KitWoodFloor",30];
	_crate addItemCargoGlobal    	  ["KitWoodStairs",4];
	_crate addItemCargoGlobal    	  ["KitWoodRamp",2];
	_crate addItemCargoGlobal     	  ["KitFoundation",15];
	_crate addItemCargoGlobal 	 	  ["KitFirePlace",2];
	_crate addItemCargoGlobal 	 	  ["KitCinderWalls",25];
	_crate addItemCargoGlobal 	 	  ["KitTiPi",8];
	_crate addItemCargoGlobal 	 	  ["KitShelf",8];
	_crate addItemCargoGlobal     	  ["JackKit",2];
	_crate addItemCargoGlobal     	  ["KitPlotPole",2];
	_crate addItemCargoGlobal         ["VehicleRepair",8];
	_crate addBackpackCargoGlobal     ["B_Carryall_mcamo",2];
	_crate addBackpackCargoGlobal     ["B_Carryall_ocamo",2];

} 
	
else
{ 
	['You need 800 Krypto to purchase the Base Kit Big',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
