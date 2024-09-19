/// @description Ação realizada ao clicar/passar o mouse em cima do botão
if (mouse_x > x && mouse_x < x + self.sprite_width &&
    mouse_y > y && mouse_y < y + self.sprite_height) {
    //Verifica se o mouse está acima do botão
	button_hover = true;
	image_index = 1;
    // Verifica se o botão foi clicado
    if (mouse_check_button_pressed(mb_left)) {
		audio_play_sound(sound_effect,1,false);
		//Ativa a função do botão depois de 1 segundo
		alarm[0] = 30;
    }
} else {
    button_hover = false;
	image_index = 0;
}