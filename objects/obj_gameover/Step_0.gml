//restart key
restartKey = global.restartKey;

//fade in
alpha += alphaSpd;
alpha = clamp(alpha, 0, 1);

//restart
if restartKey && alpha >= 1
{
	room_restart();	
}






















