// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
//Movement

hSpeed = lengthdir_x(inpytMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inpytMagnitude * speedWalk, inputDirection);

PlayerCollision();

// update sprite index

var _oldSprite = sprite_index;
if (inpytMagnitude !=0)
{
	direction = inputDirection
	sprite_index = sPlayerRun; //run
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0;

//update image index
playerAnimateSprite();


//Attack key logic
if (keyAttack)
{
	state = PlayerStateAttack;
	stateAttack = AttackSlash;

}

//activate key logic
if (keyActivate)
{
	//1. Check for an entity to activate
	//2. If there is nothing, or there is somthing, but it has no script 
		//2a. If we are carrying somthing, throw it
		//2b. Otherwise, rool
	//3. Otherwise, there is somthing and it has a script! Activate!
	//4. If the thing we activate is an NPC, make it face torward us!
	
	var _activateX = lengthdir_x(10, direction);
	var _activateY = lengthdir_y(10, direction);
	activate = instance_position(x + _activateX, y + _activateY, pEntity);
	//Roll if nothing to activate or not
	if (activate == noone || activate.entityActivateScript == -1)
	{
		// Throw something if held, therwise roll
		if (global.iLifted != noone)
		{
			PlayerThrow();
		} 
		else 
		{
		state = PlayerStateRoll;
		moveDistanceRemaining = distanceRoll;
		}
	}
	else
	{
		//Activate the entity
		ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		// Make an NPC face the player
		if (activate.entityNPC)
		{
			with (activate)
			{
				direction = point_direction(x, y, other.x, other.y);
				image_index = CARDINAL_DIR;
			}
		}
	}
}

}