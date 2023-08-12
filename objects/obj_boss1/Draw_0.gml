// Inherit the parent event
event_inherited();
// draw the line
//if path_index != -1
//{
//draw_path(path,x,y,1)
//draw_text(x,y-10,$"{hp}and {current_state}")
//}; 
if current_state == enemy_states.FLEE
{
draw_text(x,y-20,$"Healing in progress")
draw_text(x-20,y-10,$"Damage him {6-heal} to stagger")
}
if current_state == enemy_states.STAGGER
{
	draw_text(x,y-20,$"Stagger for {staggerperiod/60}seconds")
}
//draw_text(x,y-20,$"Stagger for {staggerperiod}")

draw_text(x, y-100, string(hp));