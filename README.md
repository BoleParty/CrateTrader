# CrateTrader
Buying gear/weapon crates from an A.I. unit within spawn zones on Altis


Feel free to use and to modify this work but please don`t remove the credits. Thank you.


By adding these files to your server in each spawn zone(East/Central/West) on Altis there will be an A.I. unit. This A.I. offers medical treatment and from this A.I. you can buy crates whith different loadouts. 

Once purchased the crate will spawn in front of you. You can buy as many crates as you want as long you have enough Krypto.

In each script you can change the content and the prices to you liking. Two crates are containing DLC weapons so these are not usable for every player.


Two options to install the script:

1.)

Unpack your mission and copy the \CrateTrader folder into your mission root.Then copy your unpacked mission to: C:\Users\Yourusername\Arma3\Missions

Start your arma and go to the editor. Choose Altis map and load your epoch mission.

Place as many units or objects on the map wherever you want the action to be activated and add this code to the init field:

"this addaction [""Crate Content"", {[(_this select 1)] execVM ""scripts\CrateTrader\CrateContent.sqf""}];this addaction [""Soldier Kit - Price: 200"", {[(_this select 1)] execVM ""scripts\CrateTrader\SoldierKit.sqf""}];this addaction [""Sniper Kit - Price: 300"", {[(_this select 1)] execVM ""scripts\CrateTrader\SniperKit.sqf""}];this addaction [""Elite Sniper Kit - Price: 1200"", {[(_this select 1)] execVM ""scripts\CrateTrader\EliteSniperKit.sqf""}];this addaction [""Diver Kit - Price: 350 Krypto"", {[(_this select 1)] execVM ""scripts\CrateTrader\DiverKit.sqf""}];this addaction [""MG Kit - Price: 375 Krypto"", {[(_this select 1)] execVM ""scripts\CrateTrader\MGKit.sqf""}];this addaction [""Heavy Gunner Kit - Price: 1250"", {[(_this select 1)] execVM ""scripts\CrateTrader\HeavyGunnerKit.sqf""}];;this addaction [""Combat Medic Kit - Price: 300 Krypto"", {[(_this select 1)] execVM ""scripts\CrateTrader\MedicKit.sqf""}];this addaction [""Demolition Kit - Price: 1000 Krypto"", {[(_this select 1)] execVM ""scripts\CrateTrader\DemoKit.sqf""}];this addaction [""Supply Crate - Price: 400 Krypto"", {[(_this select 1)] execVM ""scripts\CrateTrader\SupplyCrate.sqf""}]; this addaction [""Medical Treatment - Price: 50 Krypto"", {[(_this select 1)] execVM ""scripts\CrateTrader\Heal.sqf""}];this disableAI ""move""; this allowDamage false;";

Save your mission and go back to Desktop and then to C:\Users\Yourusername\Arma3\Missions and repack your mission..

Upload your pbo to your servers \mpmissions folder.



2.)

Unpack your mission and copy the \CrateTrader folder into your mission root.

Replace your mission.sqm with the attached one.

Repack your mission and upload to your server.



Battleye - add these exceptions to scripts.txt: 

!"this allowDamage false;" !"_crate allowDamage false;"  to allowDamage line

!"_player setDamage 0;" to setDamage line
 
!"_crate addWeaponCargoGlobal" to addWeaponCargo line

!"_crate addMagazineCargoGlobal" to addMagazineCargo line

!"_crate addItemCargoGlobal" to addItemCargo line

!"_crate addBackpackCargoGlobal" to addBackpackCargo line


Have fun!

Regards
