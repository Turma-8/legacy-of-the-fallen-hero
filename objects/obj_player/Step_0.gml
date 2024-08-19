var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _xspeed = velocity * (_right - _left);
var _yspeed = velocity * (_down - _up);

if(place_meeting(x + _xspeed, y, obj_wall)){
	_xspeed = 0;	
}

if(place_meeting(x, y + _yspeed, obj_wall)){
	_yspeed = 0;	
}

x += _xspeed;
y += _yspeed;