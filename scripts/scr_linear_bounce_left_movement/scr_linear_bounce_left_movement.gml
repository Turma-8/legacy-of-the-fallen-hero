/// @description Aplica um movimento de meia-lua linear à um objeto
/// @author João Victor

//Faça o objeto se mover "quicando" em linha reta para qualquer direção
//ao colidir com outro objeto, vire para trás 
function scr_linear_bounce_left_movement(_object_to_move, _object_to_repulse){
	var _x_speed = -1;
	scr_linear_vertical_movement(_object_to_move, _object_to_repulse);
	_object_to_move.x += _x_speed;
}