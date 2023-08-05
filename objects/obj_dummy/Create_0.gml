//ai varaibles
alert = false;
alert_dis = 0;
attack_dis = 0;
move_spd = 0;
current_state = enemy_states.IDLE;
facing = 1;
hsp = 0;
vsp = 0;
knockback_time = 0;
//------------AI Pathing------------//

//init previous positions
xp = x;
yp = y;

//create path resource
path = path_add();

//set delay for path calculation
calc_path_delay = 30;
//set timer for path calculation
calc_path_timer = irandom(60);

///------------Attacks/------------//

attack_frame_start = 0;
attack_frame_end = 0;
can_attack = true;
attack_timer = 0;
attack_cooldown = 0;
attack_timer = attack_cooldown;
damage = 3;
knockback_time = 0;

//------------HitReg------------//
get_damaged_create(100);