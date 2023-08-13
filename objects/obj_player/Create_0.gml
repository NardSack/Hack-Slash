inputX=0;
inputY=0;
dashy=0
dashx=0
moveSpeed=1;
moveX=0;
moveY=0;
dir=1;

stuncount=0

knockback_time = 0;
hsp = 0;
vsp = 0;

dashCheck = false;

is_reading = false;
read_timer = 0;
read_delay = 30;

energy = 10;
maxEnergy = 10;

gun_alpha = 1;

deathsoundTimer = 0;


//damage setup
get_damaged_create(20, true);

action = "move"
//initialize the three states
states={
idledown: new State(spr_playeridle_down),
idleup: new State(spr_playeridle_up),
idlehorizon: new State(spr_playeridle_right),

walkdown: new State(spr_playerwalk_down),
walkhorizon: new State(spr_playerwalk_right),
walkup: new State(spr_playerwalk_up),

attackdown: new State(spr_playermelee_down),
attackup: new State(spr_playermelee_up),
attackhorizontal: new State(spr_playermelee_right),

dashhorizonal: new State(spr_playerdash_right),
dashup: new State(spr_playerdash_up) ,
dashdown: new State(spr_playerdash_down) ,

death : new State(spr_playerdeath) 

}

#region
states.attackdown.StateOnEnd(states.idledown);
states.attackup.StateOnEnd(states.idleup);
states.attackhorizontal.StateOnEnd(states.idlehorizon);

//states.walkdown.StateOnEnd(states.idledown);
//states.walkup.StateOnEnd(states.idleup);
//states.walkhorizon.StateOnEnd(states.idlehorizon);
#endregion

if (inputX !=0 || inputY !=0)
{
	states.dashup.StateOnEnd(states.walkup);
	states.dashdown.StateOnEnd(states.walkdown);
	states.dashhorizonal.StateOnEnd(states.walkhorizon);

}
else if (inputX==0&&inputY==0)
{
	states.dashup.StateOnEnd(states.idleup);
	states.dashdown.StateOnEnd(states.idledown);
	states.dashhorizonal.StateOnEnd(states.idlehorizon);

}

state = states.idledown;


//set intial state


aimDir = 0;
weaponOffsetDist = 6;

//weapon info
	revolverTimer = 0;
	shotgunTimer = 0;
	railgunTimer = 0;
	
	//add weapons to player weapon inventory
	array_push( global.PlayerWeapons, global.WeaponList.revolver);
	array_push( global.PlayerWeapons, global.WeaponList.shotgun);
	array_push( global.PlayerWeapons, global.WeaponList.railgun);
	
	selectedWeapon = 0;
	weapon = global.PlayerWeapons[selectedWeapon];
	
	
	
	
	
	