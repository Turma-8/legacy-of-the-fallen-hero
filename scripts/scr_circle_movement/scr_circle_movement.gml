/// @description Aplica um movimento circular à um objeto
/// @author Pedro Vinícius

//Faça o objeto se mover em círculos (defina o raio dentro da própria função)
//ao colidir com outro objeto, continue seu movimento
function scr_circle_movement(_object_to_move, _object_to_collide){
	// Atualiza a posição para o movimento circular
	_object_to_move.x += lengthdir_x(_object_to_move.velocity, _object_to_move.direction);
	_object_to_move.y += lengthdir_y(_object_to_move.velocity, _object_to_move.direction);

	// Aumenta o ângulo de direção para criar o movimento circular
	_object_to_move.direction += 2; // Ajuste este valor para alterar a velocidade de rotação

	// Verifica a colisão com o _object_to_collide
	if (place_meeting(_object_to_move.x, _object_to_move.y, _object_to_collide)) {
	    // Altera a direção em um ângulo aleatório para continuar o movimento
	    _object_to_move.direction += irandom_range(120, 240); // Muda a direção aleatoriamente entre 120 e 240 graus para evitar ficar preso
	}

}