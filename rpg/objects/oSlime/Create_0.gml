// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER


//Enemy Sprite
sprMove = sSlime;

//Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
enemyScript[ENEMYSTATE.CHASE] = SlimeChase;

