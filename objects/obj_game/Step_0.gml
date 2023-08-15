if keyboard_check_pressed(vk_escape)
{
	if room != rm_initialize && room != rm_menu
		{
	
		instance_create_layer(0, 0, "Pause_layer", obj_pauser);
	
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
}




























