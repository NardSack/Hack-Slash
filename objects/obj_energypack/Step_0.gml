/// @description Insert description here
// You can write your code in this edito
if instance_exists(obj_player)
{
	if place_meeting(x,y,obj_player)
	{
	if obj_player.energy <= obj_player.maxEnergy
	{
		obj_player.energy=obj_player.maxEnergy
	}
	instance_destroy ()
	
	}
}
