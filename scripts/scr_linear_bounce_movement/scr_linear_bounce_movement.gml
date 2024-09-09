/// @description Aplica um movimento de meia-lua linear à um objeto
/// @author João Victor

//Faça o objeto se mover "quicando" em linha reta para qualquer direção
//ao colidir com outro objeto, vire para trás 
function scr_linear_bounce_movement(_object_to_move, _object_to_repulse){
	var _xspeed = abs(_object_to_move.velocity);
	var _yspeed = _object_to_move.velocity;
	
	if(place_meeting(_object_to_move.x, _object_to_move.y + _yspeed, _object_to_repulse)){
		_object_to_move.velocity *= -1;	
	} else {
		_object_to_move.y += _yspeed;
	}
	
	if(place_meeting(_object_to_move.x + _xspeed, _object_to_move.y, _object_to_repulse)){
		_object_to_move.direction = 180;
	}
	
	if(place_meeting(_object_to_move.x - _xspeed, _object_to_move.y, _object_to_repulse)){
		_object_to_move.direction = 0;
	}
	
	if(_object_to_move.direction == 0){
		_object_to_move.x += _xspeed;	
	} else {
		_object_to_move.x -= _xspeed;	
	}
}
