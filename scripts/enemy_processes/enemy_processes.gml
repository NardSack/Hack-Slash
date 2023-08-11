function calc_enemy_movement()//for knockbacks
{
	///@desc moves enemy and applies drag
		
	if !place_meeting( x, y, obj_wall)
	{
	//apply movement
	x+= hsp;
	y+= vsp;
	//slowdown
	hsp *= global.drag;
	vsp *= global.drag;
	}
	check_if_stopped();
}
// can combine the function //////////
function check_if_stopped()
{
	if abs(hsp) < 0.1 hsp = 0;
	if abs(vsp) < 0.1 vsp = 0;
}

function check_facing()
{	
	///@desc check which way enemy is moving
	if knockback_time <= 0
		{
			var _facing = sign(x-xp);
			if _facing != 0 { facing = _facing; image_xscale=facing }
			
		}
}

function check_for_player()
{
	///@desc Check if player is close enough to start chasing

	var _dis = distance_to_object(obj_player);
	
	//check to start chasing or not
	if ((_dis <= alert_dis) or (alert)) and _dis > attack_dis
		{
			alert = true;
			chase_player();
		}
	else if _dis <= attack_dis
		{
		//if coward and alert and (attack_dis > pref_dis) and _dis < pref_dis //if too close and coward and alerted
		//	{
		//		path_end();
		//		current_state = enemy_states.FLEE;
		//	}
		//else
		//	{	
			//close enough to attack and alerted
			if /*_dis <= attack_dis &&*/ attack_timer-- <= 0
				{
					current_state = enemy_states.ATTACK;
				}
			//}
		}
}

function chase_player()
{
	if calc_path_timer-- <= 0 {
		//reset timer
		calc_path_timer = calc_path_delay;
		
		//check for path to player
		//if x == xp and y == yp { var _type = 0} else { var _type = 1 }
		//is _type neccary it is only allowing diagonal movement
			
		if instance_exists( obj_player )
			{
				_found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, choose(0,1));
			}
		else 
			{
				alert=false;
				current_state=enemy_states.IDLE;
			}
		//start path if able to reach player
		if _found_player == true && instance_exists(obj_player)
			{
				path_start(path, move_spd, path_action_stop, false);
			}
		else
			{
				path_end();	
			}
	}	
}

function run_from_player()
{	
	if calc_path_timer-- <= 0 
		{
			//reset timer
			calc_path_timer = calc_path_delay;
		
			//check for path to player
			if x == xp and y == yp { var _type = 0} else { var _type = 1 }
		
		if instance_exists(obj_player)
			{
				var _player_x = obj_player.x;
				var _player_y = obj_player.y;
	
				var _moveDir = point_direction(_player_x, _player_y, x, y);
			    var _target_x = x + lengthdir_x(attack_dis, _moveDir);
			    var _target_y = y + lengthdir_y(attack_dis, _moveDir);
				
				_flee_spot = mp_grid_path(global.mp_grid, path, x, y, _target_x, _target_y, _type);
			
			}
		else 
			{
				alert=false;
				current_state=enemy_states.IDLE;
			}
		if _flee_spot == true
			{
				path_start(path, move_spd, path_action_stop, false);
			}
		}
}

function enemy_anim()
{
	switch (current_state)
	{
		case enemy_states.IDLE:
			sprite_index = s_idle;
			show_hurt()
		break;
	
		case enemy_states.MOVE:
			sprite_index = s_walk;
			show_hurt()
		break;
		
		case enemy_states.FLEE:
			sprite_index = s_flee;
			show_hurt()
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
// function bossattack()
//{
//	var attack = s_attack
//	if attack == s_attack_1
//	{ 
//		if image_index>=attack_frame_start
//		{
//			var _inst = instance_create_depth(x, y, depth-2000, obj_enemyattack_hb,
//			{
//				mask_index : s_attack_hb_1
//			});
//			_inst.image_xscale = obj_boss1.image_xscale
//			_inst.damage = damage;
//		}
//	}
//	else if attack == s_attack_2
//	{
//		if image_index>=attack2_frame_start
//		{
//			var _inst = instance_create_depth(x, y, depth-2000, obj_enemyattack_hb,
//			{
//				mask_index : s_attack_hb_2
//			});
//			_inst.image_xscale = obj_boss1.image_xscale
//			_inst.damage = damage;
//		}
//	}
//	s_attack=attack
//	//reset for next attack
//	attack_timer += attack_cooldown;
//	path_end()
//}
function perform_attack()
{
	if image_index >= attack_frame_start
	{
		var depforhb = depth
		if sprite_index == spr_carnifexattack2_right or sprite_index == spr_carnifexattack1_right
		{
			depforhb +=100
		}
		else
		{
			depforhb -=2000
		}
			//create hitbox
			var _inst = instance_create_depth(x, y, depforhb, obj_enemyattack_hb,
			{
				sprite_index : s_attack_hb,
				mask_index : s_attack_hb
			}
			);
			
			_inst.damage = damage;
			_inst.knockback_time = knockback_time;
			_inst.image_index= self.image_index;
			_inst.image_xscale= self.image_xscale;
			
			//reset for next attack
			attack_timer += attack_cooldown;
	}
	path_end();
} 

function perform_ranged_attack()
{
	if image_index >= attack_frame_start
		{
			
			//create hitbox
			var bulletInst = instance_create_depth(x, y-22, depth, obj_lucent_shot);
			bulletInst.damage = damage;
			bulletInst.knockback_time = knockback_time;
			
			//reset for next attack
			attack_timer += attack_cooldown;	
			
		}
	path_end();
}

function show_hurt()
{	///@desc show the hurt sprite when being knocked back
	
	if knockback_time-- > 0 sprite_index = s_hurt;
	
}













