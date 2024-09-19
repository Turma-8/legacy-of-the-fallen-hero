/// @description Evento executado à todo momento

// Verifica se o jogador está dentro do raio de visão do mob
var _target_x = obj_player.x;
var _target_y = obj_player.y;
var _dist = point_distance(x, y, _target_x, _target_y);

if(place_meeting(x,y,obj_player) and !obj_player.is_invencible){
	audio_play_sound(obj_player.hitted_sound,1,false);
	obj_player.health_points -= 1;
	obj_player.is_invencible = true;
}

//Verifica se o mob não está cego
if(can_view){
	if (_dist <= max(room_width, room_height)) {
	    // Verifica se o mob pode ver o jogador sem obstruções
	    if (!collision_line(x, y, _target_x, _target_y, obj_wall, true, false)) {
	        // O mob vê o jogador e começa a persegui-lo
			is_idle = false;
			if(velocity < 0) 
				velocity *= -1;
			is_chasing = true;
	    }
	}
}

// Se o mob estiver perseguindo o jogador
if (is_chasing) {
    // Limpa o caminho anterior
    path_clear_points(path);
	mp_grid_clear_all(grid);
	
	// Atualiza a posição de todos obstáculos no caminho
	mp_grid_add_instances(grid, obj_wall, true);
	
	for(var _i = 0; _i < instance_number(obj_mob); _i++){
		var _found_instance = instance_find(obj_mob,_i);	
		if(_found_instance != self.id)
			mp_grid_add_instances(grid, _found_instance, true);
	}
	
    // Gera um caminho do mob até o jogador usando o grid
    if (mp_grid_path(grid, path, x, y, _target_x, _target_y, true)) {
        path_start(path, velocity, path_action_stop, true); // O mob começa a seguir o caminho gerado
    } else {
        // Se não conseguir encontrar um caminho, ele para
        path_end();
    }
}

// Padrão de movimento caso o mob não persiga o jogador
if(is_idle) {
	if(idle_movement != noone){
		idle_movement(self, obj_wall);
	}
}

scr_change_movement_sprite(self, [sprite_up_movement, sprite_right_movement, sprite_down_movement, sprite_left_movement]);