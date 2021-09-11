// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueResponses(){
///@arg Response
switch(argument0)
{
	case 0: break;
	case 1: NewTextBox("You gave Response A!", 1); break;
	case 2: NewTextBox("You gave response B?", 1, ["3:Yes!", "0:No."]); break;
	case 3: NewTextBox("thanks for your responses!", 0); break;
	default: break;
}
}