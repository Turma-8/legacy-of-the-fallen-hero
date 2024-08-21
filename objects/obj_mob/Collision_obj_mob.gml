/// @description Evento para tratar colisões entre mobs

// Determina a direção da colisão em relação à instância atual
var _dir = point_direction(other.x, other.y, x, y);

// Define a força do empurrão
var _force = 5;

// Calcula a nova posição baseada na direção e força
var _new_x = x + lengthdir_x(_force, _dir);
var _new_y = y + lengthdir_y(_force, _dir);

// Move a instância para a nova posição calculada
x = _new_x;
y = _new_y;

// Verifica se o objeto colidiu com uma parede
if (place_meeting(x, y, obj_wall)) {
    // Se colidiu com a parede, rebata na direção oposta
    _dir = point_direction(x, y, other.x, other.y);

    // Calcula a nova posição para rebater para fora da parede
    _new_x = x + lengthdir_x(_force, _dir);
    _new_y = y + lengthdir_y(_force, _dir);

    // Move a instância para a nova posição fora da parede
    x = _new_x;
    y = _new_y;
}
