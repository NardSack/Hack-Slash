if attack_timer > 0
	{
		attack_timer--;
	}

//ai stuff
switch (current_state)
{
	case enemy_states.IDLE:
		calc_enemy_movement();
		check_for_player();
		if path_index != -1 {current_state = enemy_states.MOVE} //if no longer idle
		enemy_anim();
	break;
	
	case enemy_states.MOVE:
		calc_enemy_movement();
		check_for_player();
		check_facing();
		if path_index == -1 {current_state = enemy_states.IDLE} //if no longer moving
		enemy_anim();
	break;
	
	case enemy_states.FLEE:
		calc_enemy_movement();
		run_from_player();
		if distance_to_object(obj_player)+50 >= pref_dis
		{
			path_end();	
		}
		check_facing();
		if path_index == -1 {current_state = enemy_states.IDLE} //if no longer moving
		enemy_anim();
	break;
	
	case enemy_states.ATTACK:
		calc_enemy_movement();
		if attack_timer <= 0
			{
				perform_ranged_attack();
			}
		check_facing();
		enemy_anim();
	break;
	
	case enemy_states.DEAD:
		calc_enemy_movement();
		enemy_anim();
	break;
}

//receive damage
get_damaged( obj_damage_enemy );