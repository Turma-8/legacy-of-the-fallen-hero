/// @description Evento executado à todo momento

// Verifica se o jogador está dentro do raio de visão do mob
var _target_x = obj_player.x;
var _target_y = obj_player.y;
var _dist = point_distance(x, y, _target_x, _target_y);

// Tempo definido para deixar o mob invencível após ser atingido
if(is_hitted){
	if(alarm[10] == -1)
		alarm[10] = 15;
	// Se atingir o valor máximo ou mínimo, inverte a direção
	if (image_alpha >= 0.1) {
	    image_alpha -= 0.01;  // Diminui a transparência
	}
}

// Permitindo dano de contato do mob com o jogador
if(can_view and place_meeting(x,y,obj_player) and !obj_player.is_invencible){
	audio_play_sound(obj_player.hitted_sound,1,false);
	obj_player.health_points -= touch_damage;
	obj_player.is_invencible = true;
}

// Permitindo dano de contato do mob com o jogador
if(place_meeting(x + obj_player.velocity,y,obj_player) and keyboard_check_pressed(ord("E"))){
	can_view = true;
	image_speed = 1;
}

if(place_meeting(x,y + obj_player.velocity,obj_player) and keyboard_check_pressed(ord("E"))){
	can_view = true;
	image_speed = 1;
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
if (is_chasing and alarm[5] == -1) {
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

//Para o movimento do inimigo caso seja acertado
if(is_hitted){
	if(alarm[5] == -1){
		path_end();
		alarm[5] = attack_cooldown;
	}
}

show_debug_message(alarm[5]);

// Padrão de movimento caso o mob não persiga o jogador
if(is_idle) {
	if(idle_movement != noone){
		idle_movement(self, obj_wall);
	}
}

scr_change_movement_sprite(self, [sprite_up_movement, sprite_right_movement, sprite_down_movement, sprite_left_movement]);