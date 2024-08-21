/// @description Função utilizada para desenhar elementos persistentes na tela
draw_text(x,y-35,"Mova-se com WASD");
if(obj_player.can_dash == false){
	draw_text(x,y+5,"Nao pode usar o dash ("+string(obj_player.alarm[0])+")");
} else {
	draw_text(x,y+5,"Pode usar o dash (com SHIFT)");
}