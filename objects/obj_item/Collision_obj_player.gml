switch(sprite_get_name(sprite_index)){
		case "spr_sword":
			show_message("Agora você pode atacar (com o botão esq do mouse).");
			obj_player.can_attack = true;
			break;
		case "spr_boots":
			show_message("Agora você pode se impulsionar (com a tecla SHIFT).");
			obj_player.can_dash = true;
			break;
		case "default":
			show_message("Agora você faz algo (só não sei o quê).");
			break;
}

instance_destroy();