keyleft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp =  keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown =  keyboard_check(vk_down) || keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(ord("K"));
keyAttack = keyboard_check_pressed(ord("H"));
keyItem = keyboard_check_pressed(ord("J"));

inputDirection = point_direction(0, 0, keyRight - keyleft, keyDown - keyUp);
inpytMagnitude = (keyRight - keyleft != 0) || (keyDown - keyUp != 0);

if (!global.gamePaused) script_execute(state);

depth = -bbox_bottom;


