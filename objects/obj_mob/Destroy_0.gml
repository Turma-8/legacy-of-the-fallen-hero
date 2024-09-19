/// @description Evento executado ao objeto ser destruído
audio_play_sound(death_sound, 1, false);

// Dropa (ou não) um item aleatório
var _random_item = irandom(4);
switch(_random_item){
	case 1:
		var _mana = instance_create_depth(x,y,-1,obj_item);
		_mana.sprite_index = asset_get_index("spr_player_mana_point");
		break;
	case 2:
		var _life = instance_create_depth(x,y,-1,obj_item);
		_life.sprite_index = asset_get_index("spr_player_life_point");
		break;
	case 3:
		var _arrow = instance_create_depth(x,y,-1,obj_item);
		_arrow.sprite_index = asset_get_index("spr_arrow");
		break;
}

// Libera os recursos do grid e do path
mp_grid_destroy(grid);
path_delete(path);

