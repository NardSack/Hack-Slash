/// @description Insert description here
// You can write your code in this editor
hovermarker=">"
hover = 0
mxPrev = mouse_x;
myPrev = mouse_y;
// declare which font to use
draw_set_font(goofyfont);

//padding
//op_border = 8
// row space lineheight
//op_space =32

option[0]="Start Game"
option[1]="Setting"
option[2]="Quit Game"
option[3]="super long font thing"

//array length of the options
op_length = array_length(option)
margin = string_height(option[0])
//height of each line
heightline =30
height = heightline*op_length
//setting width
width =1 
longoption=0
for( var i=0;i<op_length;i++)
{
	if string_width(option[i]) > longoption
	{
		longoption=i
	}
}
width= max(width,string_width(option[longoption]))

width+= string_width(hovermarker)
widthfull = width+margin*2
heightfull= height+margin*2
