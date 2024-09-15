function scr_change_combat_sprite(_object, _combat_sprites, _weapon_name){
	var _weapon = instance_create_layer(_object.x, _object.y, "Instances", obj_weapon);
	_weapon.depth = -1;
	_weapon.direction = _object.direction;
	_weapon.weapon_name = _weapon_name; 
	if((_object.direction >= 45) and (_object.direction <= 135)){
		_object.sprite_index = _combat_sprites[0];
		_weapon.depth = 1;
		switch(_weapon_name){
			case "sword":
				_weapon.sprite = spr_sword_attack_up;
				break;
			case "staff":
				_weapon.sprite = spr_staff_attack_up
				break;
			case "shield":
				break;
			case "bow":
				_weapon.sprite = spr_bow_attack_up;
				break;
		}
	} else if((_object.direction < 45) or (_object.direction > 315)){
		_object.sprite_index = _combat_sprites[1];
		switch(_weapon_name){
			case "sword":
				_weapon.sprite = spr_sword_attack_right;
				break;
			case "staff":
				_weapon.sprite = spr_staff_attack_right;
				break;
			case "shield":
				break;
			case "bow":
				_weapon.sprite = spr_bow_attack_right;
				break;
		}
	} else if((_object.direction >= 225) and (_object.direction <= 315)){
		_object.sprite_index = _combat_sprites[2];
		switch(_weapon_name){
			case "sword":
				_weapon.sprite = spr_sword_attack_down;
				break;
			case "staff":
				_weapon.sprite = spr_staff_attack_down;
				break;
			case "shield":
				break;
			case "bow":
				_weapon.sprite = spr_bow_attack_down;
				break;
		}
	} else if((_object.direction < 225) and (_object.direction > 135)){
		_object.sprite_index = _combat_sprites[3];
		switch(_weapon_name){
			case "sword":
				_weapon.sprite = spr_sword_attack_left;
				break;
			case "staff":
				_weapon.sprite = spr_staff_attack_left;
				break;
			case "shield":
				break;
			case "bow":
				_weapon.sprite = spr_bow_attack_left;
				break;
		}
	}
}