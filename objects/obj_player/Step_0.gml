if(can_move){
	
	//Controles básicos de Movimentação
	var _left = keyboard_check(ord("A"));
	var _right = keyboard_check(ord("D"));
	var _up = keyboard_check(ord("W"));
	var _down = keyboard_check(ord("S"));
	
	//Controles de Movimentação Avançada e Combate
	var _dash = keyboard_check_pressed(vk_shift);
	var _attack = mouse_check_button_pressed(mb_left);
	var _shoot = mouse_check_button_pressed(mb_right);
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

	if(place_meeting(x + _xspeed, y, obj_wall)){
		_xspeed = 0;	
	}

	if(place_meeting(x, y + _yspeed, obj_wall)){
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
	if(_attack){
		can_move = false;
		alarm[1] = attack_cooldown;
		scr_change_combat_sprite(self, [sprite_attack_up, sprite_attack_right, sprite_attack_down, sprite_attack_left], "sword");
	}
	if(_shoot and can_move){
		can_move = false;
		alarm[1] = bow_cooldown;
		scr_change_combat_sprite(self, [sprite_attack_up, sprite_attack_right, sprite_attack_down, sprite_attack_left], "bow");
	}
	if(_magic and can_move){
		can_move = false;
		alarm[1] = magic_cooldown;
		scr_change_combat_sprite(self, [sprite_attack_up, sprite_attack_right, sprite_attack_down, sprite_attack_left], "staff");
	}
}