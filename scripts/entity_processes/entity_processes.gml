function damage_entity( _tid, _sid, _damage, _time)
{
	with (_tid)
		{
			hp -= _damage;
			var _dead = is_dead();

			path_end();
			//set knockback
			if _dead { var _dis = 4 } else { _dis = 1; }
			if _tid.object_index == obj_player { _dis = 6 }
			if _sid.object_index == obj_sgbullet {_dis = 1/6; }
			var _dir = point_direction(_sid.x, _sid.y, x, y);
			hsp += lengthdir_x(_dis, _dir);
			vsp += lengthdir_y(_dis, _dir);
			if _tid != obj_player
				{
					calc_path_delay = _time;
					alert = true;
				}
			knockback_time = _time;
			return _dead;
		}
}

function is_dead()
{
	switch (object_index)
		{
			default:
			if current_state != enemy_states.DEAD
				{
					if hp <= 0
						{
							current_state = enemy_states.DEAD;
							hp = 0;
							image_index = 0;
					
							//set death sound
							switch (object_index) 
								{
									default:
									// play teneri death sound
									break;
							
									case obj_runt:
									//// play runt death sound
									break;
							
									case obj_lucent:
									//// play lucent death sound
									break;
								}
					
							return true;
						}
				} else return true;
			break;
			
			case obj_player:
			
			//add in check of player dead state here
			
			break;
		}
}