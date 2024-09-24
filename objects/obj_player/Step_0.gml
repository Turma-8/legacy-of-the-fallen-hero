//Controles que chamam a Interface Gráfica de Usuário
var _pause = keyboard_check_pressed(vk_escape);

if(_pause and instance_exists(obj_system) and obj_system.pause == true and instance_number(obj_mob) == 0){
	obj_system.pause = false;
} else if(_pause and instance_exists(obj_system) and obj_system.pause == false and instance_number(obj_mob) == 0){
	obj_system.pause = true;
} else if(_pause and instance_exists(obj_system) and obj_system.pause == false and instance_number(obj_mob) > 0){
	show_message("Elimine todos os inimigos para exibir o menu de pausa");	
}

if(instance_number(obj_player_aim) == 0 and ammo_points > 0 and can_shoot){
	instance_create_depth(x,y,-2,obj_player_aim);
} else if(instance_number(obj_player_aim) > 0 and ammo_points == 0) {
	instance_destroy(obj_player_aim);	
}

//Pausa todos os áudios e paralisa o visual e lógica do obj_player
if(instance_exists(obj_system) and obj_system.pause){
	audio_pause_all();
	image_speed = 0;
	exit;
} else {
	image_speed = 1;
	audio_resume_all();	
}

//Mata o personagem caso a vida esteja zerada
if(health_points <= 0){
	sprite_index = spr_death;
	if (image_index >= image_number - 1) {
		visible = false;
	}
	can_move = false;
	if(alarm[3] == -1){
		alarm[3] = 240; // Aguarda 4 segundos para reininciar o jogo
		var _game_over_screen = instance_create_depth(0,0,-10,obj_message); // Exibe a mensagem de game over
		_game_over_screen.sprite_index = spr_death_message_ptbr;
	}
}

//Deixa o personagem com um popup de transparência caso seja acertado.
if(is_invencible){
	// Atualiza a transparência (alpha) baseado na direção
	image_alpha += alpha_direction * alpha_speed;
	// Se atingir o valor máximo ou mínimo, inverte a direção
	if (image_alpha >= alpha_max) {
	    alpha_direction = -1;  // Diminui a transparência
	}
	else if (image_alpha <= alpha_min) {
	    alpha_direction = 1;  // Aumenta a transparência
	}
	if(alarm[2] == -1){
		alarm[2] = iframe;
	}
} else {
	image_alpha = 1;	
}

if(can_move and !is_rooted){
	
	//Controles básicos de Movimentação
	var _left = keyboard_check(ord("A"));
	var _right = keyboard_check(ord("D"));
	var _up = keyboard_check(ord("W"));
	var _down = keyboard_check(ord("S"));
	
	//Controles de Movimentação Avançada e Combate
	var _dash = keyboard_check_pressed(vk_shift);
	var _attack = mouse_check_button_pressed(mb_left);
	var _shoot = mouse_check_button_pressed(mb_right);
	var _block = keyboard_check_pressed(vk_space);
	var _magic = keyboard_check_pressed(ord("1"));

	var _xspeed = 0;
	var _yspeed = 0;

	//Verifica qual foi a última tecla de movimento apertada
	if(_left) last_movement_key_pressed = "left";
	else if(_right) last_movement_key_pressed = "right";
	else if(_up) last_movement_key_pressed = "up";
	else if(_down) last_movement_key_pressed = "down";
	else last_movement_key_pressed = "";

	//Altera a direção do personagem com base nisso
	switch(last_movement_key_pressed){
		case "up":
			direction = 90;
			break;
		case "right":
			direction = 0;
			break;
		case "down":
			direction = 270;
			break;
		case "left":
			direction = 180;
			break;
	}

	if(can_dash && _dash && alarm[0] == -1){
		can_dash = false;
		alarm[0] = dash_cooldown;
	}

	if(alarm[0] > dash_cooldown - 10){
		var _pacing = instance_create_layer(x,y,"Instances",obj_pacing);
		_pacing.sprite = sprite_index;
		_pacing.pacing_rate = 0.15;
		_xspeed = (dash_distance + velocity) * (_right - _left);
		_yspeed = (dash_distance + velocity) * (_down - _up);
	} else {
		_xspeed = velocity * (_right - _left);
		_yspeed = velocity * (_down - _up);
	}

	if(place_meeting(x + _xspeed, y, obj_wall) or (place_meeting(x + _xspeed, y, obj_mimic) and !obj_mimic.can_view)){
		_xspeed = 0;	
	}

	if(place_meeting(x, y + _yspeed, obj_wall) or (place_meeting(x, y + _yspeed, obj_mimic) and !obj_mimic.can_view)){
		_yspeed = 0;	
	}

	if((_right and _left) or (_up and _down)){
		last_movement_key_pressed = "";
		direction = 270;
	} else {
		x += _xspeed;
		y += _yspeed;
	}

	//Troca de Sprites quando o Personagem estiver ou não se movendo
	if(last_movement_key_pressed == ""){
		scr_change_movement_sprite(self, [sprite_idle_up, sprite_idle_right, sprite_idle_down, sprite_idle_left]);
	} else {
		scr_change_movement_sprite(self, [sprite_up_movement, sprite_right_movement, sprite_down_movement, sprite_left_movement]);
	}

	//Troca de Sprites quando o Personagem estiver em combate
	if(can_attack and _attack){
		can_move = false;
		alarm[1] = attack_cooldown;
		scr_change_combat_sprite(self, [sprite_attack_up, sprite_attack_right, sprite_attack_down, sprite_attack_left], "sword", false);
	}
	if(can_shoot and _shoot and can_move and ammo_points > 0){
		ammo_points--;
		can_move = false;
		alarm[1] = bow_cooldown;
		direction = point_direction(x,y,mouse_x,mouse_y);
		scr_change_combat_sprite(self, [sprite_attack_up, sprite_attack_right, sprite_attack_down, sprite_attack_left], "bow", false);
	}
	if(can_magic and _magic and can_move and mana_points > 0){
		mana_points--;
		can_move = false;
		alarm[1] = magic_cooldown;
		scr_change_combat_sprite(self, [sprite_attack_up, sprite_attack_right, sprite_attack_down, sprite_attack_left], "staff", false);
	}
	if(can_block and _block and can_move){
		audio_play_sound(snd_shield,1,false);
		can_move = false;
		is_invencible = true;
		if(is_rooted)
			is_rooted = false;
		scr_change_combat_sprite(self, [sprite_block_up, sprite_block_right, sprite_block_down, sprite_block_left], "shield", false);
		alarm[1] = block_cooldown;
	}
}