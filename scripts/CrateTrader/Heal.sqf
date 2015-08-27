/************************
*  Medical Treatment    *
*    Crate Trader       *
*  by BoleParty[TGM]    *
*tacongamingmilitia.com *
************************/
private ["_player"];
 
 _player = _this select 0;


if (EPOCH_playerCrypto > 50)

then 
{   titleText ["50 Krypto removed from your pocket!", "PLAIN DOWN"];
    EPOCH_playerCrypto = EPOCH_playerCrypto -50;

sleep 1;
	
	['You`ve been medically supplied!',0,0.7,2,0] spawn bis_fnc_dynamictext;
    
_player setDamage 0;}
	
else
{ 
	['You need 50 Krypto to use this service!',0,0.7,5,0] spawn bis_fnc_dynamictext;
	
};
