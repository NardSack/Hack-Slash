//default variables
alert = false;
alert_dis = 250;
attack_dis = 18;
move_spd = 1;
current_state = enemy_states.IDLE;
facing = 1;

//init previous positions
xp = x;
yp = y;

//create path resource
path = path_add();

//set delay for path calculation
calc_path_delay = 30;
//set timer for path calculation
calc_path_timer = irandom(60);

