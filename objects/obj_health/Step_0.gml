/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_player)
{
	if place_meeting(x,y,obj_player)
	{
	if obj_player.hp <= obj_player.maxHp
	{
		obj_player.hp+=4
		obj_player.hp = clamp(obj_player.hp,0,obj_player.maxHp);
	}
	instance_destroy ();
	}
}