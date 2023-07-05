sprite_index = spr_cross;
image_speed = 1;
audio_play_sound(pistolshot, 10, false);

if (!ev_animation_end)
{
	image_index = 1;
	audio_play_sound(pistolshot, 10, false);
}

