switch(button_function){
			case "newgame":
				save_game("menu.dat");
				room_goto(rm_room_1_1);
				break;
			case "continue":
				load_game("save.dat");
				instance_destroy(obj_music_box);
				break;
			case "endgame":
				game_end();
				break;
			default:
				show_message("Botão sem função definida.");
				break;
		}