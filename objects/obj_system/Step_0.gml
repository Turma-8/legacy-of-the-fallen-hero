// Exibe os nomes das salas no console (opcional)
var _current_room_name = room_get_name(room);

//Caso os inimigos da sala atual sejam apagados, salve-a em salas completadas
if (array_contains(rooms, _current_room_name) and !array_contains(passed_rooms, _current_room_name)) {
    if (instance_number(obj_mob) == 0) {
        array_push(passed_rooms, _current_room_name);
    }
}

//Caso a sala atual esteja na lista de salas completadas, os inimigos são apagados
if (array_contains(passed_rooms, _current_room_name)) {
    with (obj_mob) {
        instance_destroy();
	}
}

if(pause){
	window_set_cursor(cr_arrow);
	instance_create_depth(250,300,-3,obj_exit_button);
	
} else {
	if(instance_exists(obj_exit_button)){
		instance_destroy(obj_exit_button);
		draw_set_alpha(1);
	}
	window_set_cursor(cr_none);
}
