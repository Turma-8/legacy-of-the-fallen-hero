/// @description Função utilizada para desenhar elementos persistentes na tela
draw_text(x,y-35,"Mova-se com WASD");
if(obj_player.can_dash == false){
	draw_text(x,y+5,"Aguarde ("+string(obj_player.alarm[0])+") para usar o dash novamente.");
} else {
	draw_text(x,y+5,"Pode usar o dash (com SHIFT)");
}