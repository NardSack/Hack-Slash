//height=op_border*2+string_height(option[0]) +(op_length-1)*op_space

//draw option
draw_set_color(c_white)
draw_set_font(global.font_main)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
// draw menu background
//draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1);
draw_sprite_stretched(sMenuBox,0,x-margin,y-margin,widthfull,heightfull)


for (var i =0 ;i<op_length;i++)
{
	var _str = option[i]
	if hover == i
	{
		draw_set_color(c_yellow)
		if hover == 1
		{
			draw_set_color(c_gray)
		}
		_str=hovermarker+_str
	}
	draw_text(x,y+i*heightline,_str)
	draw_set_color(c_white)
}