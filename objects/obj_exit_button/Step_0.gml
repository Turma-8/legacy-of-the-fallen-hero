/// @description Ação realizada ao clicar/passar o mouse em cima do botão
if (mouse_x > x && mouse_x < x + self.sprite_width &&
    mouse_y > y && mouse_y < y + self.sprite_height) {
	image_blend = c_dkgray;
    // Verifica se o botão foi clicado
    if (mouse_check_button_pressed(mb_left)) {
		audio_play_sound(snd_deny,1,false);
		game_end();
    }
} else {
	image_blend = c_white;
}