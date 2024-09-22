// Cria a lista
rooms = [];
passed_rooms = [];
opened_doors_rooms = [];
pause = false;
change_music = true;

// Loop através de todas as salas do jogo
for (var _i = 0; _i < room_last; _i++) {
    var _room_name = room_get_name(_i);
    if (_room_name != "rm_main_menu") {
        array_push(rooms, _room_name);
    }
}