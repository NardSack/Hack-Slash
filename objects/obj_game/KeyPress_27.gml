/// @description Insert description here
// You can write your code in this editor
if room != rm_initialize or room != rm_menu
{
Menu
(
camera_get_view_x(view_camera[0]),
camera_get_view_y(view_camera[0]),
[
["Resume"],
["Save Game"],
["Restart Level"],
["Back to Title"],
["Quit Game "],


],
""
)
}