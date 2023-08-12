dir = 0;
spd = 2;
xspd = 0;
yspd = 0;

damage = 2;

//cleanup
destroy = false;
destroy_anim = false;
playerDestroy = true;

//impact sprites

s_break = choose(spr_lucentshot_burst1, spr_lucentshot_burst2);


if instance_exists(obj_player)
	{
		dir = point_direction(x, y, obj_player.x, obj_player.y);	
	}

























