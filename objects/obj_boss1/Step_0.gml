// Inherit the parent event
//event_inherited();
//depth
depth = -bbox_bottom;


//changing of sprite
switch (current_state)
{
	case enemy_states.IDLE:
	calc_enemy_movement();
	check_for_player();
	s_attack=choose(s_attack_1,s_attack_2);
		if path_index != -1 {current_state = enemy_states.MOVE} //if no longer idle
	check_facing();
	enemy_anim();
	break;
	
	case enemy_states.ATTACK:
	calc_enemy_movement();
	check_facing();

	if sprite_index == s_attack_1
	{
		s_attack_hb=s_attack_hb_1
		attack_frame_start=attack1_frame_start;
	}
	else if sprite_index == s_attack_2
	{
		s_attack_hb=s_attack_hb_2
		attack_frame_start=attack2_frame_start;
	}
	
	if attack_timer <= 0
	{
		perform_attack();
	}

	enemy_anim();
	break;
	
	case enemy_states.MOVE:
	calc_enemy_movement();
	check_for_player();
	check_facing();
	s_attack=choose(s_attack_1,s_attack_2);
		if path_index == -1 {current_state = enemy_states.IDLE} //if no longer moving
	check_facing();
	enemy_anim();
	break;
	
	case enemy_states.DEAD:
	path_delete(path)
	check_facing();
	enemy_anim();
	break;
	// flee useless
	case enemy_states.FLEE:
	check_facing();
	enemy_anim();
	break;
}


//receive damage
get_damaged( obj_damage_enemy );




//if collision_circle(x,y,attackrange,obj_player,false,true)// and not attack animation
//{
//	//attack the player
//	obj_player.hp--;
//}