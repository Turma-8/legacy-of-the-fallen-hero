/// @description Evento executado ao objeto ser destruído
audio_play_sound(death_sound, 1, false);

// Evita dropar itens caso esteja numa sala concluída
if (array_contains(obj_system.passed_rooms, room_get_name(room))) {
    exit;
}

//Dropa, fixamente, 5 flechas.
for(var _i = 0; _i <= 5; _i++){
	var _arrow = instance_create_depth(x,y,-1,obj_item);
	_arrow.sprite_index = asset_get_index("spr_arrow");
}

// Libera os recursos do grid e do path
mp_grid_destroy(grid);
path_delete(path);

