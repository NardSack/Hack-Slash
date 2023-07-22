//drawing the player's weapon
function draw_my_weapon()
{
	//draw weapon
	//get weapon off player's body
	var _xOffset = lengthdir_x(weaponOffsetDist + 3, aimDir);
	var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);
	
	
	//pin gun on character
	var _weaponYsc1 = 1;

	//flip weapon upright
	if aimDir > 90 && aimDir <270
	{
		_weaponYsc1 = -1;
	}
	
	
	draw_sprite_ext(spr_revolver, 0, (x+_xOffset), (y+_yOffset - 6) , 1, _weaponYsc1, aimDir, c_white, 1);
}