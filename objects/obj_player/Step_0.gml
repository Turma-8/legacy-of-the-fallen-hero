var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _dash = keyboard_check_pressed(vk_shift);

var _xspeed = 0;
var _yspeed = 0;

if(can_dash && _dash && alarm[0] == -1){
	can_dash = false;
	alarm[0] = dash_cooldown;
}

if(alarm[0] > dash_cooldown - 10){
	_xspeed = (dash_distance + velocity) * (_right - _left);
	_yspeed = (dash_distance + velocity) * (_down - _up);
} else {
	_xspeed = velocity * (_right - _left);
	_yspeed = velocity * (_down - _up);
}

if(place_meeting(x + _xspeed, y, obj_wall)){
	_xspeed = 0;	
}

if(place_meeting(x, y + _yspeed, obj_wall)){
	_yspeed = 0;	
}

x += _xspeed;
y += _yspeed;