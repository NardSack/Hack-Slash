   /// @description Insert description here
// You can write your code in this editor

//draw_sprite_stretched(sMenuBox,0,x,y,widthFull,heightFull)

var _camX = camera_get_view_x(view_camera[0]);
var _camW = camera_get_view_width(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);
var _camH = camera_get_view_height(view_camera[0]);

//draw a black rectangle
draw_rectangle_color(_camX, _camY, _camX+_camW, _camY+_camH, c_black,c_black,c_black,c_black, false);

draw_set_color(c_white)
draw_set_font(global.font_main)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

var _desc =!(description == -1);
for (i=0;i<(optionsCount +_desc);i++)
{
	draw_set_color(c_white)
	if i==0 && _desc
	{
		draw_text(menuitem_x,menuitem_y,description)
	}
	else
	{
		var _str =options[i-_desc][0]
		if hover == i -_desc
		{
			draw_set_color(c_yellow);
			if hover == 1
			{
				draw_set_color(c_grey);
			}
			_str = hovermarker+_str;
		}
		draw_text(menuitem_x,menuitem_y+i*heightLine,_str)
		draw_set_color(c_white)
	}
}

draw_set_font(-1);








