// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ActivateLiftable(){
if (global.iLifted == noone)
{
	PlayerActOutAnimation(player);
	
	global.iLifted = argument0;
	with (global.iLifted)
	{
		lifted = true;
		persistent = true;
	}
}
	
}