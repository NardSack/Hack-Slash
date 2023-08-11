//get inputs

//controls
global.rightKey =keyboard_check(ord("D"))||keyboard_check(vk_right);
global.leftKey = keyboard_check(ord("A"))||keyboard_check(vk_left);
global.upKey =keyboard_check(ord("W"))||keyboard_check(vk_up);
global.downKey = keyboard_check(ord("S"))||keyboard_check(vk_down);
global.meleeKey = keyboard_check_pressed(vk_shift);
global.interactKey = keyboard_check_pressed(ord("F"))||keyboard_check_pressed(vk_enter);
global.dashKey = keyboard_check_pressed(vk_space);
global.shootKey = mouse_check_button(mb_left);
global.swapKey1 = keyboard_check_pressed((ord("1")));
global.swapKey2 = keyboard_check_pressed((ord("2")));
global.swapKey3 = keyboard_check_pressed((ord("3")));
global.restartKey = keyboard_check_pressed((ord("R")));

global.menuUpKey = keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"));
global.menuDownKey = keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"));







