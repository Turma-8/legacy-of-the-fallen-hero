/// @description Aplica um movimento linear de virar à direita à um objeto
/// @author Luiz Gustavo
//Faça o objeto se mover em linha reta para a direita ao colidir com outro objeto, vire à direita
function scr_edge_right_movement(_object_to_move, _object_to_repulse) {
    var _speed = 2;
    var _future_x = _object_to_move.x + lengthdir_x(_speed, _object_to_move.direction);
    var _future_y = _object_to_move.y + lengthdir_y(_speed, _object_to_move.direction);
    
    if (place_meeting(_future_x, _future_y, _object_to_repulse)) {
        _object_to_move.direction = (_object_to_move.direction + 90) mod 360;
    }
    _object_to_move.x += lengthdir_x(_speed, _object_to_move.direction);
    _object_to_move.y += lengthdir_y(_speed, _object_to_move.direction);
}




