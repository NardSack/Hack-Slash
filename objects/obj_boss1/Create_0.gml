// Inherit the parent event
event_inherited();
heal=0
alert_dis = 2000;
attack_dis = 1000;
pref_dis = attack_dis;
knockback_time = 0;
move_spd=2.5
//assign sprites
staggerperiod = 300
s_idle = spr_carnifexidle_right;
s_walk = spr_carnifexwalk_right;
s_attack_1= spr_carnifexattack1_right
s_attack_2 = spr_carnifexattack2_right
s_attack_hb_1 = spr_carnifexvfx1_right
s_attack_hb_2 =spr_carnifexvfx2_right
s_dead = spr_carnifexdeath_right;
s_attack=0;
s_attack_hb=0;
s_flee = spr_carnifexidle_healing;
s_stagger =  spr_carnifexidle_right
finaldeath= 78964523;
//hurt to only happen when changing phases
s_hurt = spr_carnifexhurt_right;
//attack disable attack frame
attack1_frame_start = 1;
attack2_frame_start = 1;
//attack_frame_end = 7;
can_attack = true;
attack_cooldown = 90;
attack_timer = attack_cooldown;
damage = 6;
knockback_time = 0;
get_damaged_create(60);



