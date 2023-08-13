/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,obj_player)
{
	image_speed=10
	with (obj_player)
	{
		obj_player.action = "stun"

	}

}
if image_index == image_number - 1
{
		holdtimer -=1
	if holdtimer <=0
	{
		with (obj_player)
		{
			obj_player.action = "move"
		}
		instance_destroy()
	}
}




