// Inherit the parent event
//event_inherited();
//depth
depth = -bbox_bottom;
if hp <= 30 and heal ==0 
{
	heal=1
	current_state=enemy_states.FLEE;
}
if hp <= 0
{
	current_state=enemy_states.DEAD;
}
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
		var i = choose(1,2) 
		if attack_dis>200
		{
			i=2
		}
		if i ==1
		{
		perform_attack();
		}
		else
		{
			if instance_exists(obj_player)
			{
			aimdir=point_direction(x,y,obj_player.x,obj_player.y)
			perform_ranged_attack()
			}

		}
	}

	enemy_anim();
	break;
	
	case enemy_states.MOVE:
	calc_enemy_movement();
	check_for_player();
	check_facing();
	s_attack=choose(s_attack_1,s_attack_2);
		if path_index == -1 {current_state = enemy_states.IDLE} //if no longer moving
	enemy_anim();
	break;
	
	case enemy_states.DEAD:

	check_facing();
	enemy_anim();
	break;
	// flee useless
	case enemy_states.FLEE:
	stopandheal()
	attack_dis=40
	attack_cooldown=40
	move_spd=4
	check_facing();
	enemy_anim();
	break;
	
	case enemy_states.STAGGER:
	calc_enemy_movement();
	check_facing();
	staggerperiod -= 1
	if staggerperiod <= 0
	{
		current_state=enemy_states.IDLE
		staggerperiod=300
	}
	break;
}


//receive damage
if get_damaged( obj_damage_enemy )
{
	if heal < 6 and heal!=0
		{
			heal+=1
		}
	if current_state == enemy_states.STAGGER
		{
			staggerperiod-=50
			drophealth()
		}
	if place_meeting(x,y,obj_SwordHitBox)
	{
		drophealth()
	}
	
}




//if collision_circle(x,y,attackrange,obj_player,false,true)// and not attack animation
//{
//	//attack the player
//	obj_player.hp--;
//}