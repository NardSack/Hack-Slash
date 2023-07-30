
switch (current_state)
{
	case enemy_states.IDLE:
		check_for_player();
		if path_index != -1 {current_state = enemy_states.MOVE}
		enemy_anim();
	break;
	
	case enemy_states.MOVE:
		check_for_player();
		check_facing();
		if path_index == -1 {current_state = enemy_states.IDLE}
		enemy_anim();
	break;
	
	case enemy_states.ATTACK:
		enemy_anim();
	break;
	
	case enemy_states.DEAD:
		enemy_anim();
	break;
}