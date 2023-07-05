/// @description Insert description here
// You can write your code in this editor


var _right =keyboard_check(ord("D"))
var _left = keyboard_check(ord("A"))
var _up =keyboard_check(ord("W"))
var _down = keyboard_check(ord("S"))

//movement
var _xsped = _right-_left
var _ysped = _down-_up;

move_and_collide(_xsped*movespeed,_ysped*movespeed,obj_wall)