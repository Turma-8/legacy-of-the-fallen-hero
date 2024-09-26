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

if(obj_player.visible = true and room == rm_selection_phase_3 and !audio_is_playing(snd_lava_dungeon)){
	audio_stop_sound(obj_music_box.music_to_play);
	obj_music_box.music_to_play = snd_lava_dungeon;
}

if(obj_player.visible = true and room == rm_selection_phase_2 and !audio_is_playing(snd_ice_dungeon)){
	audio_stop_sound(obj_music_box.music_to_play);
	obj_music_box.music_to_play = snd_ice_dungeon;
}

if(obj_player.visible = true and room == rm_selection_phase_1 and !audio_is_playing(snd_normal_dungeon)){
	audio_stop_sound(obj_music_box.music_to_play);
	obj_music_box.music_to_play = snd_normal_dungeon;
}

if(obj_player.visible = true and room == rm_ice_room_18 and !audio_is_playing(snd_ice_boss)){
	audio_stop_sound(obj_music_box.music_to_play);
	obj_music_box.music_to_play = snd_ice_boss;
}

if(obj_player.visible = false and !audio_is_playing(snd_game_over)){
	audio_stop_sound(obj_music_box.music_to_play);
	obj_music_box.music_to_play = snd_game_over;
}

if(obj_player.visible = true and audio_is_playing(snd_game_over)){
	audio_stop_sound(snd_game_over);
}

if(pause){
	audio_stop_all();
	window_set_cursor(cr_arrow);
	instance_create_depth(250,300,-3,obj_exit_button);
	
} else {
	audio_resume_all();
	if(instance_exists(obj_exit_button)){
		instance_destroy(obj_exit_button);
		draw_set_alpha(1);
	}
	window_set_cursor(cr_none);
}
