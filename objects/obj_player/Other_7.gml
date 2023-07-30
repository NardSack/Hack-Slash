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
