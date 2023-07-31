function check_facing()
{	
	///@desc check which way enemy is moving
	var _facing = sign(x-xp);
	if _facing != 0 { facing = _facing }
}

function check_for_player()
{
	///@desc Check if player is close enough to start chasing

	var _dis = distance_to_object(obj_player);
	
	//check to start chasing or not
	if ((_dis <= alert_dis) or (alert)) and _dis > attack_dis
	{
		alert = true;
	
		if calc_path_timer-- <= 0 {
			//reset timer
			calc_path_timer = calc_path_delay;
		
			//check for path to player
			if x == xp and y == yp { var _type = 0} else { var _type = 1 }
			
			if instance_exists( obj_player )
			{
				 _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, _type);
			}
			
			//start path if able to reach player
			if _found_player == true
				{
					path_start(path, move_spd, path_action_stop, false);
				}
		}
	}
	else
	{
		if _dis <= attack_dis
			{
				path_end();
			}
	}
}

function enemy_anim(){
	switch (current_state)
	{
		case enemy_states.IDLE:
			sprite_index = s_idle;
		break;
	
		case enemy_states.MOVE:
			sprite_index = s_walk;
		break;
	
		case enemy_states.ATTACK:
			sprite_index = s_attack;
		break;
	
		case enemy_states.DEAD:
			sprite_index = s_dead;
		break;
	}
	//update previous position
	xp = x;
	yp = y;
}
