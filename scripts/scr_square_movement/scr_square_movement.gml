/// @description Aplica um movimento quadrangular à um objeto
/// @author Luiz Gustavo
//Faça o objeto se mover em quadrados (defina o alcance dentro da própria função)
//ao colidir com outro objeto, continue seu movimento

function scr_square_movement(_object_to_move, _object_to_ignore) {
    var _side_length = 32;
    var _speed = _object_to_move.velocity/2;
    var _turn_threshold = 5; //para evitar virar muito cedo ou tarde
    var _future_x = _object_to_move.x + lengthdir_x(_speed, _object_to_move.direction);
    var _future_y = _object_to_move.y + lengthdir_y(_speed, _object_to_move.direction);
    
    // Verifica se o objeto alcançou o lado do quadrado ou se houve uma colisão
    if ((abs(_object_to_move.x mod _side_length) < _turn_threshold && abs(_object_to_move.y mod _side_length) < _turn_threshold) ||
        place_meeting(_future_x, _future_y, _object_to_ignore)) {
        
        _object_to_move.direction = (_object_to_move.direction + 90) mod 360;
    }
    _object_to_move.x += lengthdir_x(_speed, _object_to_move.direction);
    _object_to_move.y += lengthdir_y(_speed, _object_to_move.direction);
}
