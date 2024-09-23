/// @description Evento executado ao objeto ser destruído
audio_play_sound(death_sound, 1, false);

instance_destroy(obj_boss_life);
obj_player.final_boss_key++;
show_message("Você está mais perto de libertar o reino.");

// Libera os recursos do grid e do path
mp_grid_destroy(grid);
path_delete(path);

