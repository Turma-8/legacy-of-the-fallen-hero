if(place_meeting(x + obj_player.velocity, y + obj_player.velocity, obj_player)){
	if(keyboard_check(ord("E"))){
		audio_play_sound(snd_save,1,false);
		save_game("save.dat");
		show_message("Jogo salvo!");
	}
}