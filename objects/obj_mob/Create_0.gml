/// @description Chamada de Atributos e Métodos iniciais

// Define as dimensões do grid
var _cell_size = 32; // Tamanho da célula do grid
grid = mp_grid_create(0, 0, room_width div _cell_size, room_height div _cell_size, _cell_size, _cell_size);

// Adiciona obstáculos (obj_wall) ao grid
mp_grid_add_instances(grid, obj_wall, true);

// Cria um caminho para o mob seguir
path = path_add();

// Inicializa a variável de estado neutro
is_idle = true // Indica se o mob está em estado neutro

// Inicializa a variável de perseguição
is_chasing = false; // Indica se o mob está perseguindo o player

// Inicializa a variável de movimentação aleatória
alarm[0] = 60;