// Função utilizada para definir um padrão de movimento à objetos
function scr_linear_repulse_movement(_type, _object_to_move, _object_to_repulse){
	var _xspeed = 0;
	var _yspeed = 0;
	var _velocity = _object_to_move.velocity;
	
	if(_type == "horizontal"){
		_xspeed = _velocity;
		if(place_meeting(x + _xspeed, y, _object_to_repulse)){
			_xspeed *= -1;
			_object_to_move.velocity *= -1;
		}
	}
	
	if(_type == "vertical"){
		_yspeed = _velocity;
		if(place_meeting(x, y + _yspeed, _object_to_repulse)){
			_yspeed *= -1;
			_object_to_move.velocity *= -1;
		}
	}
	
	_object_to_move.x += _xspeed;
	_object_to_move.y += _yspeed;
}