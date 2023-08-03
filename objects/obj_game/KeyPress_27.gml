/// @description Insert description here
// You can write your code in this editor
Menu
(
x + camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]) div 2),
y + camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0]) div 2),
[
["option 1", -1],
["option 2",-1],
["option 3",-1]
],
"Choose Action"
)
