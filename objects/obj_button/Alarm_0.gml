switch(button_function){
			case "newgame":
				room_goto(rm_selection_phase_1);
				window_set_cursor(cr_none);
				break;
			case "continue":
				if(load_game("save.dat")){
					window_set_cursor(cr_none);
					instance_destroy(obj_music_box);
				}
				break;
			case "endgame":
				game_end();
				break;
			default:
				show_message("Botão sem função definida.");
				break;
		}