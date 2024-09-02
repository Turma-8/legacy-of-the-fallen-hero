/// @description Aplica um movimento triangular à um objeto
/// @author Jonas Leal

//Faça o objeto se mover em triangulos (defina o alcance dentro da própria função)
//ao colidir com outro objeto, continue seu movimento
function scr_triangle_movement(_object_to_move, _object_to_ignore) {
    var _side_length = 64;
    var _speed = 2;
    var _turn_threshold = 2; //para evitar virar muito cedo ou tarde
    var _future_x = _object_to_move.x + lengthdir_x(_speed, _object_to_move.direction);
    var _future_y = _object_to_move.y + lengthdir_y(_speed, _object_to_move.direction);
    
    // Verifica se o objeto alcançou o lado do triângulo ou se houve uma colisão
    if ((abs(_object_to_move.x mod _side_length) < _turn_threshold && (_object_to_move.direction < 120 || _object_to_move.direction >= 240))
		|| (abs(_object_to_move.y mod _side_length) < _turn_threshold && _object_to_move.direction >= 120)
		|| place_meeting(_future_x, _future_y, _object_to_ignore)) {
        
        _object_to_move.direction = (_object_to_move.direction + 120) mod 360;
    }
    _object_to_move.x += lengthdir_x(_speed, _object_to_move.direction);
    _object_to_move.y += lengthdir_y(_speed, _object_to_move.direction);
}