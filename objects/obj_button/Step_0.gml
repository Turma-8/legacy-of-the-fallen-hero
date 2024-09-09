/// @description Ação realizada ao clicar/passar o mouse em cima do botão
if (mouse_x > x && mouse_x < x + self.sprite_width &&
    mouse_y > y && mouse_y < y + self.sprite_height) {
    //Verifica se o mouse está acima do botão
	button_hover = true;
	image_index = 1;
    // Verifica se o botão foi clicado
    if (mouse_check_button_pressed(mb_left)) {
		//Ativa a função do botão
		switch(button_function){
			case "newgame":
				room_goto(rm_room_1_1);
				break;
			case "continue":
				load_game();
				break;
			case "endgame":
				game_end();
				break;
			default:
				show_message("Botão sem função definida.");
				break;
		}
    }
} else {
    button_hover = false;
	image_index = 0;
}