// Inherit the parent event
event_inherited();

//variables
alert_dis = 800;
attack_dis = 380;
pref_dis = 240;
move_spd = 1;
knockback_time = 1;
coward = true;

//assign sprite 
s_idle = spr_lucentidle_right;
s_walk = spr_lucentwalk_right;
s_flee = spr_lucentwalk_right;
s_attack = spr_lucentattack_right;
s_hurt = spr_lucenthurt;
s_dead = spr_lucentdeath;

//attack
attack_frame_start = 4;
attack_frame_end = 7;
can_attack = true;

//attack_timer = 0;
//attack_cooldown = 300;
//attack_timer = attack_cooldown;

shootTimer = 0;
windupTime = 18;
recoverTime = 45;

bulletInst = noone;

damage = 2.5;
knockback_time = 0;
get_damaged_create(2);