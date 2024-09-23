switch(sprite_get_name(sprite_index)){
	case "spr_player_mana_point":
		image_index = 6;
		break;
	case "spr_player_life_point":
		image_index = 0;
		break;	
	case "spr_bow_attack_right":
		image_index = 0;
		break;
}

if(place_meeting(x,y,obj_player)){
	audio_play_sound(snd_pick_item, 1, false);
	switch(sprite_get_name(sprite_index)){
		case "spr_sword":
			show_message("Agora você pode atacar (com o botão esquerdo do mouse).");
			obj_player.can_attack = true;
			break;
		case "spr_boots":
			show_message("Agora você pode se impulsionar (com a tecla SHIFT).");
			obj_player.can_dash = true;
			break;
		case "spr_bow_attack_right":
			image_speed = 0;
			show_message("Agora você pode atirar flechas (com o botão direito do mouse).");
			obj_player.can_shoot = true;
			break;
		case "spr_staff_attack_right":
			image_speed = 0;
			show_message("Agora você pode defender-se com um escudo mágico (use espaço).");
			obj_player.can_block = true;
			break;
		case "spr_golden_key":
			show_message("Você adquiriu uma chave dourada.");
			obj_player.golden_keys++;
			break;
		case "spr_purple_key":
			show_message("Você adquiriu uma chave púrpura.");
			obj_player.boss_keys++;
			break;
		case "spr_arrow":
			if(obj_player.ammo_points < 99)
				obj_player.ammo_points += 1;
			break;
		case "spr_player_mana_point":
			if(obj_player.mana_points < 6)
				obj_player.mana_points += 1;
			break;
		case "spr_player_life_point":
			if(obj_player.health_points < 20)
				obj_player.health_points += 1;
			break;
		case "default":
			show_message("Agora você ganha algo (só não sei o quê).");
			break;
	}
	instance_destroy();
}