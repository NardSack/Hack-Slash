global.mp_grid = 0;
global.drag = 0.93;	

if font_add_get_enable_aa()
{
    font_add_enable_aa(false);
}

global.font_main = font_add("at01.ttf", 36, false, false, 32, 128);

_debug = false;

enum enemy_states {
	IDLE,
	MOVE,
	FLEE,
	ATTACK,
	DEAD,
	STAGGER,
}