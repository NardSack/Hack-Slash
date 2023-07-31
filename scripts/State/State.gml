// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function State(_sprite) constructor // takes in sprite variables
{
	sprite=_sprite;
	stateOnEnd = undefined;//store state and undefined to make it not end 
	static StateOnEnd = function (_state){// StateOnEnd is a function
	stateOnEnd = _state;
	}
}

function state_set(_state){
if (state == _state) return;
state=_state;
sprite_index= state.sprite;
image_index = 0;
}

function state_set_attack (_state)
{
	//just need to adjust the hitbox correctly
	var addy=0
	var addx=0
	var number=48
	if _state == states.attackdown
	{
		if image_xscale== -1
		{
			addx=24
		}
		else if image_xscale== 1
		{
			addx= -24
		}
		addy= number
	}
	else if _state == states.attackup
	{
		if image_xscale== 1
		{
			addx=24
		}
		else if image_xscale== -1
		{
			addx= -24
		}
		addy= -number
	}
	else if _state == states.attackhorizontal
	{
		if image_xscale == 1
		{
		addx= number
		}
		else if image_xscale == -1
		{
		addx= -number
		}
	}
	
	state_set(_state);
	
	var _hitbox = instance_create_depth(x + addx,y+addy,depth,obj_SwordHitBox);
	_hitbox.sprite_index=sprite_index;
	_hitbox.image_xscale=image_xscale;
	
}