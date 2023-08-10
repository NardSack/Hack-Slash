var up = global.menuUpKey;
var down = global.menuDownKey;
var select = global.interactKey||global.dashKey;
x=camera_get_view_x(view_camera[0])
y=camera_get_view_y(view_camera[0])


mouseOver = false;
if point_in_rectangle(mouse_x,mouse_y,x,y,x+widthFull,y+heightFull)
{
	mouseOver=true;
	if mxPrev != mouse_x || myPrev != mouse_y
	{
		var _mouseHoverLine = (mouse_y-menuitem_y) div heightLine;
		if !(description == -1) _mouseHoverLine -=1;
		if (_mouseHoverLine < 0) _mouseHoverLine =0;
		if (_mouseHoverLine > optionsCount-1)
		{_mouseHoverLine = optionsCount -1;}  
		hover = _mouseHoverLine;
	}
}


hover += down - up;

if (hover>optionsCount -1) 
{
	hover =0;
}
if (hover < 0 )
{
	hover = optionsCount-1
}
if ((mouse_check_button_pressed(mb_left) && mouseOver)||select)
{
		switch(hover)
		{
			case 0: break;
			case 1: break;
			case 2 : room_restart() break;
			case 3 : room_goto(MenuRoom) break;
			case 4: game_end() break;
		}
		instance_destroy();
}

menuitem_y=camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0]) div 2)-(height/2)
menuitem_x = camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]) div 2)-(width/2)
mxPrev = mouse_x;
myPrev = mouse_y; 
