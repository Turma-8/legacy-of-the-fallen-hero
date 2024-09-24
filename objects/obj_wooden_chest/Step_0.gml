var _was_opened = array_contains(obj_system.opened_chests, id);

is_open = _was_opened;

if(!is_open){
	image_index = 0;
	if(place_meeting(x + obj_player.velocity, y + obj_player.velocity, obj_player)){
		if(keyboard_check(ord("E"))){
			audio_play_sound(snd_open_chest, 1, false);
			array_push(obj_system.opened_chests, id);
			switch(stored_item){
				case "":
					//show_message("Não existe item nesse baú");
					break;
				default:
					var _inst = instance_create_layer(x, y-32, "Instances", obj_item);
					_inst.sprite_index = asset_get_index("spr_"+string(stored_item));
					//show_message("Este baú continha um(a) "+string(stored_item));
					break;
			}
		}
	}
} else {
	image_index = 1;
}