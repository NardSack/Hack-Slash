//draw sprite
draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);

//draw text
//draw_text( x, y, string(hp));

//draw hp
if current_state!= enemy_states.DEAD
{
var _healthPercent = hp/maxHp;
var _hpImage = _healthPercent * (sprite_get_number(spr_enemyhealth) - 1);
draw_sprite(spr_enemyhealth, _hpImage, x, y - sprite_height + hb_offset);
}
