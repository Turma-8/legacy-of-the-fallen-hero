/// @description Aplica um movimento diagonal à um objeto
/// @author Max David
function scr_linear_diagonal_movement(_object_to_move, _object_to_repulse){
	scr_linear_vertical_movement(_object_to_move, _object_to_repulse);
	scr_linear_horizontal_movement(_object_to_move, _object_to_repulse);
}