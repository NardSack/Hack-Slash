// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function State (_sprite) constructor // takes in sprite variables
{
	sprite=_sprite;
	stateOnEnd = undefined;//store state and undefined to make it not end 
	static StateOnEnd = function (_state){// StateOnEnd is a function
	stateOnEnd = _state
	}
}

function state_set (_state){
if (state == _state) return;
state=_state;
sprite_index= state.sprite;
image_index = 0;

}