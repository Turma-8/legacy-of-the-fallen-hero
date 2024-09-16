depth = -1;

if(obj_player.health_points % 4 == 0 and instance_number(obj_life) <= 1){
	for(var _i = 1; _i < (obj_player.health_points / 4); _i++){
		var _life = instance_create_layer(x + (spacing * (_i)),y,"Instances",obj_life);
		_life.hp = 4;
	}
}

switch(hp){
	case 0:
		image_index = 4;
		break;
	case 1:
		image_index = 3;
		break;
	case 2:
		image_index = 2;
		break;
	case 3:
		image_index = 1;
		break;
	case 4:
		image_index = 0;
		break;
}

// Verifica se há mais de uma instância de obj_life
if (instance_number(obj_life) >= 1) {
	var _instance_5 = instance_find(obj_life, instance_number(obj_life) - 1);
	var _instance_4 = instance_find(obj_life, instance_number(obj_life) - 2);
	var _instance_3 = instance_find(obj_life, instance_number(obj_life) - 3);
	var _instance_2 = instance_find(obj_life, instance_number(obj_life) - 4);
	var _instance_1 = instance_find(obj_life, instance_number(obj_life) - 5);
	
	//Debug para ver a quantidade de vida do personagem
	_instance_1.show_text = obj_player.health_points;
	
	switch(obj_player.health_points){
		case 20:
			_instance_5.hp = 4;
			break;
		case 19:
			_instance_5.hp = 3;
			break;
		case 18:
			_instance_5.hp = 2;
			break;
		case 17:
			_instance_5.hp = 1;
			break;
		case 16:
			_instance_5.hp = 0;
			break;
		case 15:
			_instance_4.hp = 3;
			break;
		case 14:
			_instance_4.hp = 2;
			break;
		case 13:
			_instance_4.hp = 1;
			break;
		case 12:
			_instance_4.hp = 0;
			break;
		case 11:
			_instance_3.hp = 3;
			break;
		case 10:
			_instance_3.hp = 2;
			break;
		case 9:
			_instance_3.hp = 1;
			break;
		case 8:
			_instance_3.hp = 0;
			break;
		case 7:
			_instance_2.hp = 3;
			break;
		case 6:
			_instance_2.hp = 2;
			break;
		case 5:
			_instance_2.hp = 1;
			break;
		case 4:
			_instance_2.hp = 0;
			break;
		case 3:
			_instance_1.hp = 3;
			break;
		case 2:
			_instance_1.hp = 2;
			break;
		case 1:
			_instance_1.hp = 1;
			break;
		case 0:
			_instance_1.hp = 0;
			break;
	}
}
