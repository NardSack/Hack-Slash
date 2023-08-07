/// @description Insert description here
// You can write your code in this editor
var up = keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"))
var down = keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))
var select = keyboard_check_pressed(vk_enter)||keyboard_check_pressed(vk_space)

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

hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

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
	case 0: room_goto(Room1) break;
	case 2 : game_end() break;
	}
}

mxPrev = mouse_x;
myPrev = mouse_y;  