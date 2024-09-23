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

//Itera sobre todos os pontos de vida, os diminuindo se necessário
var _hp = obj_player.health_points;
with (self) {
	if (identifier >= 1 and instance_number(all)) {
		var _threshold = identifier * 4;
        if (_hp <= _threshold) {
			hp = max(0, _hp - (_threshold - 4));
		}
	}
}