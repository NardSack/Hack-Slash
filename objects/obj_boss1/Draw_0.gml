// Inherit the parent event
event_inherited();
if current_state == enemy_states.FLEE
{
draw_text(x,y-20,$"I can heal too...")
draw_set_font(-1);
draw_text(x,y+10,$"(Stagger in {6-heal})")
draw_set_font(global.font_main);
}
if current_state == enemy_states.STAGGER
{
	draw_text(x,y-20,$"Staggered!")
}
//draw_text(x,y-20,$"Stagger for {staggerperiod}")
if current_state != enemy_states.DEAD
{
draw_text(x, y-100, string(hp));
}

draw_set_font(-1)
draw_text_color(x-10, y-120, string(ceil(hp)), c_red, c_red, c_red, c_red, 1);
draw_set_font(global.font_main);
