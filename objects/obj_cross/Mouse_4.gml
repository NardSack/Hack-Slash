sprite_index = spr_cross;
image_speed = 1;
audio_play_sound(snd_pistolshot, 10, false);

if image_index != 0 {
	image_index = 1;
	audio_play_sound(snd_pistolshot, 10, false);
}

