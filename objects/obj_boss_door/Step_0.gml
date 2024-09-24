//Verifica se a porta já foi aberta no obj_system
var _opened_door = array_contains(obj_system.opened_doors_rooms, room_get_name(room));

//Mostra a porta aberta caso o jogador retorne à sala
if(_opened_door){
	image_index = 1;
	if(place_meeting(x + obj_player.velocity, y + obj_player.velocity, obj_player)){
		obj_player.y -= 5;
		exit;
	}
}

//Abre a porta caso o jogador cumpra os requisitos
if(!_opened_door and !instance_exists(obj_mob)){
	if(place_meeting(x + obj_player.velocity, y + obj_player.velocity, obj_player)){
		if(keyboard_check(ord("E")) and obj_player.boss_keys > 0){
			image_index = 1;
			audio_play_sound(snd_unlock_door,1,false);
			obj_player.y -= 5;
			obj_player.boss_keys--;
			array_push(obj_system.opened_doors_rooms, room_get_name(room));
		}
	}
}