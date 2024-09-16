sprite_index = sprite;	

if(image_index == 1) {
	switch(weapon_name){
	case "sword":
		damage = 1;
		if(used_by_enemy){
			if(place_meeting(x,y,obj_player)){
				obj_player.health_points -= damage;	
			}
		}
		break;
	case "staff":
		var _magic = instance_create_layer(x,y,"Instances",obj_boss_magic_1);
		_magic.direction = direction;
		_magic.image_angle = direction;
		if(used_by_enemy){
			_magic.from_enemy = true;	
		}
		break;
	case "bow":
		var _arrow = instance_create_layer(x,y,"Instances",obj_arrow);
		_arrow.direction = direction;
		_arrow.image_angle = direction;
		if(used_by_enemy){
			_arrow.from_enemy = true;	
		}
		break;
	case "shield":
		break;
	}
}

if (image_index >= image_number - 1) {
    instance_destroy();
}