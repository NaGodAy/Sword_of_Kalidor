// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER


//Enemy Sprite
sprMove = sSlime2;
sprAttack = sSlimeAttack;
sprDie = sSlimeDie;
sprHurt = sSlimeHurt;


//Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
enemyScript[ENEMYSTATE.CHASE] = SlimeChase;
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack;
enemyScript[ENEMYSTATE.HURT] = SlimeHurt;
enemyScript[ENEMYSTATE.DIE] = SlimeDie;
