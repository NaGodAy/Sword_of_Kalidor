lerpProgress += (1 - lerpProgress) / 50; 
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

//Cycle through responses
keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
responeSelected += (keyDown - keyUp);
var _max = array_length_1d(responses) - 1;
var _min = 0;
if (responeSelected > _max) responeSelected = _min;
if (responeSelected < _min) responeSelected = _max;


if (keyboard_check_pressed(vk_enter))
{
	var _messageLenght = string_length(massage);
	if (textProgress >= _messageLenght)
	{
		if (responses[0] != -1)
		{
			with (originInstance) DialogueResponses(other.responseScripts[other.responeSelected]);
		}
		
		instance_destroy();
		if (instance_exists(oTextQueued))
		{
			with (oTextQueued) ticket--;
		}
		else
		{
			with (oPlayer) state = lastState;
		}
	}
	else
	{
		if (textProgress > 2)
		{
			textProgress = _messageLenght;
		}
	}
}