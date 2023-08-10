var _camX = camera_get_view_x(view_camera[0]);
var _camW = camera_get_view_width(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);
var _camH = camera_get_view_height(view_camera[0]);

//draw a black rectangle
draw_set_alpha(alpha * alphaMax);
draw_rectangle_color(_camX, _camY, _camX+_camW, _camY+_camH, c_black,c_black,c_black,c_black, false);

//draw text
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(alpha);
	draw_set_font(global.font_main);
	
	//"game over"
	var _gameoverOffset = -160;
	draw_text_transformed( _camX + _camW/2, _camY + _camH/2 + _gameoverOffset, "=YOU ARE DEAD=", 2.5, 2.5, 0);
	
	//skull emoji
	draw_sprite_ext(spr_death_laugh, image_index/20, _camX + _camW/2, _camY + _camH/2, 0.25, 0.25, 0, c_white, 1);

	//"press R to restart"
	var _restartOffset = 160
	draw_text_transformed( _camX + _camW/2, _camY + _camH/2 + _restartOffset, "Press [R] to RESTART", 1.5, 1.5, 0);
	
	//reset defaults
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(-1);
	draw_set_alpha(1);























