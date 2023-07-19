	draw_self();

	//pin gun on character
	var _weaponYsc1 = 1;

	if aimDir > 90 && aimDir <270
	{
		_weaponYsc1 = -1;
	}

	draw_sprite_ext(spr_revolver, 0, (x+1), (y-2) , 1, _weaponYsc1, aimDir, c_white, 1);












