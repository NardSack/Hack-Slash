//get camera position
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

//draw player hp
var _hpString = "HP: " + string(playerHp) + "/" + string(playerMaxHp); 
var _energyString = "ENERGY: " + string(playerEnergy) + "/" + string(playerMaxEnergy); 

draw_text(_camX, _camY, _hpString);
draw_text(_camX, _camY + 30, _energyString);


















