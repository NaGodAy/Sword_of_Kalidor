
function HurtEnemy(_enemy, _damage, _sourse, _knockback)
{
	with(_enemy)
	{
		if (state != ENEMYSTATE.DIE)
		{
			enemyHP -= _damage;
			flash = 1;
			
			//Hurt od dead
			if (enemyHP <= 0)
			{
				state = ENEMYSTATE.DIE;
			}
			else
			{
				if (state != ENEMYSTATE.HURT) statePrevious = state;
				state = ENEMYSTATE.HURT;
			}
			
			image_index = 0;
			if(_knockback != 0)
			{
				var _knockDirection = point_direction(x, y, (_sourse).x, (_sourse).y);
				xTo = x - lengthdir_x(_knockback, _knockDirection);
				yTo = y - lengthdir_y(_knockback, _knockDirection);
			}
		}
	}
}