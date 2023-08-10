/// @description Insert description here
// You can write your code in this editor

if (state.stateOnEnd != undefined) //if next state is not defined
{
	if action == "dash"
	{
		action="move";
	}
    state_set(state.stateOnEnd);
}
if (state==states.death)
{
	instance_destroy()
	//code to start death screen
	instance_create_depth(0, 0, -10000, obj_gameover);
}