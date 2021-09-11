// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerActOutAnimation(){
/// @desc PlayerActOutAnimation(Sprite, EndScript)
/// @arg Sprite
/// @arg EndScript

state = PlayerStateAct;
sprite_index = argument[0];
if (argument_count > 1) animationEndScript = argument[1];
localFrame = 0;
image_index = 0;
playerAnimateSprite();
}