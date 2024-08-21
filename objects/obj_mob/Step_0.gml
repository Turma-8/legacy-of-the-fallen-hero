/// @description Função executada à todo momento

// Verifica se o jogador está dentro do raio de visão do mob
var _target_x = obj_player.x;
var _target_y = obj_player.y;
var _dist = point_distance(x, y, _target_x, _target_y);

if (_dist <= max(room_width, room_height)) {
    // Verifica se o mob pode ver o jogador sem obstruções
    if (!collision_line(x, y, _target_x, _target_y, obj_wall, true, false)) {
        // O mob vê o jogador e começa a persegui-lo
		is_idle = false;
	    alarm[0] = -1; // Desativa o alarme
		if(velocity < 0) 
			velocity *= -1;
		is_chasing = true;
    }
}

// Se o mob estiver perseguindo o jogador
if (is_chasing) {
    // Limpa o caminho anterior
    path_clear_points(path);

    // Gera um caminho do mob até o jogador usando o grid
    if (mp_grid_path(grid, path, x, y, _target_x, _target_y, true)) {
        path_start(path, velocity, path_action_stop, true); // O mob começa a seguir o caminho gerado
    } else {
        // Se não conseguir encontrar um caminho, ele para
        path_end();
    }

    // Exibe a mensagem no console que o player foi detectado
    show_debug_message("Jogador foi detectado por "+string(self.id));
}

// Padrão de movimento caso o mob não persiga o jogador
if(is_idle) {
	scr_linear_repulse_movement("vertical", self, obj_wall);
}

