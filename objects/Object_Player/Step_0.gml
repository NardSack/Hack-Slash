/// @description Insert description here
// You can write your code in this editor


var right =keyboard_check(ord("D"))
var left = keyboard_check(ord("A"))
var up =keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))

//movement
var xsped = right-left
var ysped = down-up;

move_and_collide(xsped*movespeed,ysped*movespeed,Wall)