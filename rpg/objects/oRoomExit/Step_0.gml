if (instance_exists(oPlayer)) && (position_meeting(oPlayer.x, oPlayer.y, id))
{
	global.targetRoom = targetRoom;
	global.targetX = targetX;
	global.targetY = targetY;
	global.targetDirection = oPlayer.direction;
	with (oPlayer) state = PlayerStateTransition;
	RoomTransition(TRANSE_TYPE.SLIDE, targetRoom);
	instance_destroy();
}