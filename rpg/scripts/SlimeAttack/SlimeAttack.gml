function SlimeAttack()
{
//how fast to move
var _spd = enemySpeed;

//Don't move while still getting ready to jump
if (image_index < 2) _spd = 0;

//Freez animation while in mid-air and also after landing fifnishes
if (floor(image_index) == 3) || (floor(image_index) == 5) image_speed = 0;

//How far we have to jump
var _distanceToGo = point_distance(x, y, xTo, yTo);

//begin lending end of animation once we're nearli done
if (_distanceToGo < 4) && (image_index < 5) image_speed = 1.0;

//Move
if (_distanceToGo > _spd)
{
	dir = point_direction(x, y, xTo, yTo);
	hSpeed = lengthdir_x(_spd, dir);
	vSpeed = lengthdir_y(_spd, dir);
	if (hSpeed != 0) image_xscale = sign(hSpeed);
	
	//commit to move and stop moving if we hit a wall
	if (EnemyTileCollision() == true)
	{
		xTo = x;
		yTo = y;
	}
}
else
{
	x = xTo;
	y = yTo;
	if (floor(image_index) == 5)
	{
		stateTarget = ENEMYSTATE.CHASE;
		stateWaitDuration = 15;
		state = ENEMYSTATE.WAIT;
	}
}
}