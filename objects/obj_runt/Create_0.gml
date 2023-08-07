event_inherited();

//variables
alert_dis = 500;
attack_dis = 2;
pref_dis = attack_dis;
move_spd = 4.5;
knockback_time = 1;
//assign sprites
s_idle = spr_runtidle_right;
s_walk = spr_runtwalk_right;
s_attack = spr_runtattack;
s_attack_hb = spr_runtattackHB;
s_dead = spr_runtdeath;
s_hurt = spr_runthurt;
//attack
attack_frame_start = 4;
attack_frame_end = 5;
can_attack = true;
attack_timer = 0;
attack_cooldown = 100;
attack_timer = attack_cooldown;
damage = 0.75;
knockback_time = 0;
get_damaged_create(0.5);