//get camera position
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);
var _camW = camera_get_view_width(view_camera[0]);

//draw player hp
if instance_exists(obj_player)
{
	var _border = 8;
	var _ebar_xOffset = 60;
	var _ebar_yOffset = 48;
	var _text_xOffset = 110;
	var _text_yOffset = 8;

	#region //health
	draw_sprite(spr_playerhealth, 0, _camX + _border, _camY + _border);
	for (var i = 0; i < playerMaxHp; i++)
		{
			//show current hp
			var _img = 1;
			if i+1 <= playerHp { _img = 2; };
	
			var _sep = 9;
			draw_sprite(spr_playerhealth, _img, _camX + _border + _sep*i , _camY + _border);	
		}
	#endregion

	#region //energy
	draw_sprite(spr_playerenergy, 0, _camX + _border + _ebar_xOffset, _camY + _border + _ebar_yOffset);
	for (var i = 0; i < playerMaxEnergy; i++)
		{
			//show current energy
			var _img = 1;
			if i+1 <= playerEnergy { _img = 2; };
	
			var _sep = 15;
			draw_sprite(spr_playerenergy, _img, _camX + _border + _ebar_xOffset + _sep*i , _camY + _border + _ebar_yOffset);	
		}
	#endregion
	//potion count
	draw_sprite(spr_potionblue,0,_camX + _border,_camY + _border + _ebar_yOffset+40)
	draw_text(_camX + _border+90,_camY + _border + _ebar_yOffset+40,"hahaa")
	
	#region //enemy count
	draw_sprite(spr_enemy_count, 0, _camX + _camW - _border, _camY + _border);
	draw_set_font(global.font_main);
	draw_text(_camX + _camW - _border - _text_xOffset, _camY + _border + _text_yOffset, string(enemyCount));
	draw_set_font(-1);
	#endregion
}

















