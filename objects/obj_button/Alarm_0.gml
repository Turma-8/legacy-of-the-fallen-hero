switch(button_function){
			case "newgame":
				save_game("menu.dat");
				room_goto(rm_room_1_1);
				break;
			case "continue":
				load_game("save.dat");
				break;
			case "endgame":
				game_end();
				break;
			default:
				show_message("Botão sem função definida.");
				break;
		}