/// @description Aplica um movimento linear vertical à um objeto
/// @author Max David
function scr_linear_vertical_movement(_object_to_move, _object_to_repulse){
	var _yspeed = 0;
	var _velocity = _object_to_move.velocity;
	
	_yspeed = _velocity;
	if(place_meeting(_object_to_move.x, _object_to_move.y + _yspeed, _object_to_repulse)){
		_yspeed *= -1;
		_object_to_move.velocity *= -1;
	}
	
	_object_to_move.y += _yspeed;
}