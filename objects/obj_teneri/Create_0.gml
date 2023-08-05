// Inherit the parent event
event_inherited();
alert_dis = 500;
attack_dis = 12;
move_spd = 3;
knockback_time = 1;
//assign sprites
s_idle = spr_teneriidle;
s_walk = spr_teneriwalk_right;
s_attack = spr_teneriattack;
s_dead = spr_tenerideath;
s_hurt = spr_tenerihurt_right;
//attack
attack_frame_start = 6;
attack_frame_end = 7;
can_attack = true;
attack_timer = 0;
attack_cooldown = 100;
attack_timer = attack_cooldown;
damage = 1.25;
knockback_time = 0;
get_damaged_create(1.5);