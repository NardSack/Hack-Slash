
//if player is in range 
if place_meeting(x, y, obj_player)  
	{
		//and player presses F and is not currently reading and is not on reading cooldown
		if obj_player.is_reading == false && obj_player.read_timer <= 0
			{
				create_textbox(text_id);
				instance_destroy();
			}
	}