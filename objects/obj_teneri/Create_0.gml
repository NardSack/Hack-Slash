// Inherit the parent event
event_inherited();
alert_dis = 500;
attack_dis = 18;
move_spd = 3;

//assign sprites
s_idle = spr_teneriidle;
s_walk = spr_teneriwalk_right;
s_attack = spr_teneriattack;
s_dead = spr_tenerideath;
s_hurt = spr_tenerihurt_right;

get_damaged_create(1.5);