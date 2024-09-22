// Desenha a camada escura sobre tudo
draw_set_alpha(0.2); // Define a transparência da camada escura (0 a 1)
draw_set_color(c_black); // Define a cor como preto
draw_rectangle(0, 0, room_width, room_height, false); // Desenha um retângulo preto sobre a tela inteira
draw_set_alpha(0); // Restaura a opacidade para os desenhos seguintes
draw_set_color(c_white); // Define a cor como preto

// Desenha o objeto normalmente por cima da camada escura
draw_self(); // Garante que o objeto seja desenhado após a camada escura