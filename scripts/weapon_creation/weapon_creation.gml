//constructor template for weapons

function create_weapon( _sprite, _weaponLength = 0, _bulletObj , _cooldown = 1, _bulletNum = 1, _spread = 0, _cost = 0) constructor
{
	sprite = _sprite; //required
	length = _weaponLength;
	bulletObj = _bulletObj; //required
	cooldown = _cooldown;
	bulletNum = _bulletNum;
	spread = _spread;
	cost = _cost;
}

//player's weapon inventory

global.PlayerWeapons = array_create(0);

//weapons
global.WeaponList = {
	
	revolver : new create_weapon(
		spr_revolver,//gun sprite
		sprite_get_bbox_right(spr_revolver) - sprite_get_xoffset(spr_revolver), //gun position offset to spawn bullet
		obj_rbullet, //bullet to be spawned
		45, //cooldown (in frames)
		1, //amount of bullets to shoot
		0, //spread (angle in degrees)
		1 //cost
	),
	//second weapon
	shotgun : new create_weapon(
		spr_shotgun,
		sprite_get_bbox_right(spr_shotgun) - sprite_get_xoffset(spr_shotgun),
		obj_sgbullet,
		90,
		12,
		60,
		3
	),
	//third weapon
	railgun : new create_weapon(
		spr_railgun,
		sprite_get_bbox_right(spr_railgun) - sprite_get_xoffset(spr_railgun),
		obj_railbullet,
		240,
		2,
		1,
		10
	)
	
}