depth = -1;

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

with (self) {
	var _hp = obj_player.health_points;
	if (identifier == 1) {
		switch(_hp){
			case 0:
				hp = 0;
				break;
			case 1:
				hp = 1;
				break;
			case 2:
				hp = 2;
				break;
			case 3:
				hp = 3;
				break;
			case 4:
				hp = 4;
		}
		if(_hp < 0)
			hp = 0;
		if(_hp > 4)
			hp = 4;
	}
	if (identifier == 2) {
		switch(_hp){
			case 4:
				hp = 0;
				break;
			case 5:
				hp = 1;
				break;
			case 6:
				hp = 2;
				break;
			case 7:
				hp = 3;
				break;
			case 8:
				hp = 4;
		}
		if(_hp < 4)
			hp = 0;
		if(_hp > 8)
			hp = 4;
	}
	if (identifier == 3) {
		switch(_hp){
			case 8:
				hp = 0;
				break;
			case 9:
				hp = 1;
				break;
			case 10:
				hp = 2;
				break;
			case 11:
				hp = 3;
				break;
			case 12:
				hp = 4;
		}
		if(_hp < 8)
			hp = 0;
		if(_hp > 12)
			hp = 4;
	}
	if (identifier == 4) {
		switch(_hp){
			case 12:
				hp = 0;
				break;
			case 13:
				hp = 1;
				break;
			case 14:
				hp = 2;
				break;
			case 15:
				hp = 3;
				break;
			case 16:
				hp = 4;
		}
		if(_hp < 12)
			hp = 0;
		if(_hp > 16)
			hp = 4;
	}
	if (identifier == 5) {
		switch(_hp){
			case 16:
				hp = 0;
				break;
			case 17:
				hp = 1;
				break;
			case 18:
				hp = 2;
				break;
			case 19:
				hp = 3;
				break;
			case 20:
				hp = 4;
		}
		if(_hp < 16)
			hp = 0;
		show_debug_message(hp);
	}
}