global.mp_grid = 0;
global.font_main = font_add("at01.ttf", 32, false, false, 32, 128);

_debug = false;

enum enemy_states {
	IDLE,
	MOVE,
	ATTACK,
	DEAD,
}