/// @description Chamada de Atributos e Métodos iniciais

// Define as dimensões do grid (32x32)
grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);

// Cria um caminho para o mob seguir
path = path_add();

// Inicializa a variável de estado neutro
is_idle = true // Indica se o mob está em estado neutro

// Inicializa a variável de perseguição
is_chasing = false; // Indica se o mob está perseguindo o player

alarm[1] = frozen_time;