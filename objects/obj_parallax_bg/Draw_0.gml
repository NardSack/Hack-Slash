var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

draw_sprite_tiled(spr_parallax_bg, 1, _camX, _camY);
draw_sprite(spr_parallax_bg, 2, _camX*1.05, _camY-140);
draw_sprite_tiled(spr_parallax_bg, 3, _camX*0.95, _camY-140);
draw_sprite_tiled(spr_parallax_bg, 4, _camX*0.75, _camY-140);
draw_sprite_tiled(spr_parallax_bg, 5, _camX*0.5, _camY-140);


























