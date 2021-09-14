function CalcAttack(argument0)
{
// Use attack hitbox & check for hits
mask_index = argument0
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, pEntity, hitByAttackNow, false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		//If this instance has not yet been hit by this attack, hit it!
		var hitID = hitByAttackNow[| i]; 
		if (ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
			with (hitID)
			{
				if (object_is_ancestor(object_index, pEnemy))
				{
					HurtEnemy(id, 5, other.id, 10);
				}
				else if (entityHitScript != -1) script_execute(entityHitScript);
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = player;
}