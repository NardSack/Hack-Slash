/// @description Insert description here
// You can write your code in this editor

if (sprite_index=spr_playerdash_down)||(sprite_index=spr_playerdash_up)||(sprite_index=spr_playerdash_right)||(sprite_index=spr_playerdash_left)
{
		if (sprite_index=spr_playerdash_right)
		{
			sprite_index=spr_playeridle_right;
		}
		else if (spr_playerdash_left)
		{
			sprite_index=spr_playeridle_left;
		}
			else if (spr_playerdash_down)
		{
			sprite_index=spr_playeridle_down;
		}
			else if (spr_playerdash_up)
		{
			sprite_index=spr_playeridle_up;
		}
}


