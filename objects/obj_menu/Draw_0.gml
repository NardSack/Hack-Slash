   /// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(sMenuBox,0,x,y,widthFull,heightFull)

draw_set_color(c_white)
draw_set_font(goofyfont)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

var _desc =!(description == -1);
for (i=0;i<(optionsCount +_desc);i++)
{
	draw_set_color(c_white)
	if i==0 && _desc
	{
		draw_text(x+menuitem_x,y+menuitem_y,description)
	}
	else
	{
		var _str =options[i-_desc][0]
		if hover == i -_desc
		{
			draw_set_color(c_yellow);
			_str = hovermarker+_str;
		}
		draw_text(x+menuitem_x,y+menuitem_y+i*heightLine,_str)
		draw_set_color(c_white)
	}
}










