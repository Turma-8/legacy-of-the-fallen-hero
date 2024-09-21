/// @description Função utilizada para desenhar elementos persistentes na tela
if(obj_player.sprite_index != spr_death){
	draw_text(x,y-45,"Debug de Jogo: ");
	draw_text(x,y-15,"Mova-se com WASD");
	if(obj_player.can_dash == false){
		draw_text(x,y+5,"Aguarde ("+string(obj_player.alarm[0]/60)+"s) para usar a investida novamente.");
	} else {
		draw_text(x,y+5,"Use a investida (com SHIFT)");
	}
	draw_text(x,y+25,"Interaja com o bau e outros objetos usando a tecla E");
	draw_text(x,y+45,"Use o cristal em salas seguras para salvar o jogo manualmente");
	draw_text(x,y+65,"Passe pelo portal acima para ver os inimigos do jogo.");
	draw_text(x,y+85,"Use o botao esquerdo do mouse para atacar com uma espada.");
	draw_text(x,y+105,"Use o botao direito do mouse para atacar com um arco.");
	draw_text(x,y+125,"Use a tecla '1' para atacar com magia.");
	draw_text(x,y+145,"Esses golpes serao adquiridos com o tempo no projeto final");
}
