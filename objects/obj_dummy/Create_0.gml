
//ai varaibles
alert = false;
alert_dis = 0;
attack_dis = 0;
move_spd = 0;
current_state = enemy_states.IDLE;
facing = 1;

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

//------------HitReg------------//
get_damaged_create(100);