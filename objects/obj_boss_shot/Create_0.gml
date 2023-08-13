// Inherit the parent event
event_inherited();

dir = 0;
damage = 2;
spd = 3.5;
xspd = 0;
yspd = 0;

parryCreated = false;

//cleanup
destroy = false;
destroy_anim = false;
enemyDestroy = true;

//impact sprites

s_break = choose(spr_lucentshot_burst1, spr_lucentshot_burst2);


if instance_exists(obj_player)
	{
		dir = point_direction(x, y, obj_player.x, obj_player.y);	
	}