//constructor template for weapons

function create_weapon( _sprite, _weaponLength , _bulletObj , _cooldown ) constructor
{
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
}

//player's weapon inventory

global.PlayerWeapons = array_create(0);


//weapons
global.WeaponList = {
	
	revolver : new create_weapon(
		spr_revolver,
		sprite_get_bbox_right(spr_revolver) - sprite_get_xoffset(spr_revolver),
		obj_rbullet,
		45
	),
	
	shotgun : new create_weapon(
		spr_shotgun,
		sprite_get_bbox_right(spr_shotgun) - sprite_get_xoffset(spr_shotgun),
		obj_sgbullet,
		60
	)
	
}