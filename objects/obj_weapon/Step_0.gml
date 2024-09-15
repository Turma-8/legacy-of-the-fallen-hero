sprite_index = sprite;	

if(image_index = 1) {
	switch(weapon_name){
	case "sword":
		damage = 1;
		break;
	case "staff":
		break;
	case "bow":
		var _arrow = instance_create_layer(x,y,"Instances",obj_arrow);
		_arrow.direction = direction;
		_arrow.image_angle = direction;
		break;
	case "shield":
		break;
	}
}

if (image_index >= image_number - 1) {
    instance_destroy();
}