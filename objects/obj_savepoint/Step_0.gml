if(place_meeting(x + obj_player.velocity, y + obj_player.velocity, obj_player)){
	if(keyboard_check(ord("E"))){
		save_game();
		show_message("Jogo salvo!");
	}
}