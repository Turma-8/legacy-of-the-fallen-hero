/// @description Aplica um movimento linear horizontal à um objeto
/// @author Max David
function scr_linear_horizontal_movement(_object_to_move, _object_to_repulse){
	var _xspeed = 0;
	var _velocity = _object_to_move.velocity;
	
	if(_velocity < 0) _object_to_move.direction = 180;
	else if(_velocity > 0) _object_to_move.direction = 0;
	
	_xspeed = _velocity;
		if(place_meeting(_object_to_move.x + _xspeed, _object_to_move.y, _object_to_repulse)){
			_xspeed *= -1;
			_object_to_move.velocity *= -1;
		}
		
	_object_to_move.x += _xspeed;
}