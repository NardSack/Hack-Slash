/// @description Insert description here
// You can write your code in this editor
var up = global.menuUpKey;
var down = global.menuDownKey;
var select = global.interactKey||global.dashKey;

mouseOver = false;
if point_in_rectangle(mouse_x,mouse_y,x,y,x+width,y+height)
{
	mouseOver=true;
	if mxPrev != mouse_x || myPrev != mouse_y
	{
		var _mouseHoverLine = (mouse_y-y ) div heightline;
		if (_mouseHoverLine < 0) _mouseHoverLine =0;
		if (_mouseHoverLine > op_length-1)
		{_mouseHoverLine = op_length -1;}  
		hover = _mouseHoverLine;
	}
}

hover += down - up;

if (hover>op_length -1) 
{
	hover =0;
}
if (hover < 0 )
{
	hover = op_length-1
}
if ((mouse_check_button_pressed(mb_left)&& mouseOver)||select)
{
	//cases for all
	switch(hover)
	{
	case 0: room_goto_next(); break;
	
	case 2 : room_goto(rm_credit); break;
	
	case 3 : game_end(); break;
	}
}

mxPrev = mouse_x;
myPrev = mouse_y;  