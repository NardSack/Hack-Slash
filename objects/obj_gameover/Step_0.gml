//restart key
restartKey = global.restartKey;

//fade in
alpha += alphaSpd;
alpha = clamp(alpha, 0, 1);

//restart
if restartKey && alpha >= 1
{
	if audio_is_playing(snd_deathscreen)
	{
	audio_stop_sound(snd_deathscreen);
	}
	room_restart();	

}






















