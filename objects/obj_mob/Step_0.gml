var _random_direction = irandom_range(1, 4);
var _random_step = irandom_range(0,1);

var _left = irandom(1);
var _right = irandom(1);
var _up = irandom(1);
var _down = irandom(1);

var _xspeed = velocity * (_right - _left);
var _yspeed = velocity * (_down - _up);

if(place_meeting(x + _xspeed, y, obj_wall)){
	_xspeed = 0;	
}

if(place_meeting(x, y + _yspeed, obj_wall)){
	_yspeed = 0;	
}

if(current_time - last_time > 1000){
	x += _xspeed;
	y += _yspeed;
	last_time = current_time;
}