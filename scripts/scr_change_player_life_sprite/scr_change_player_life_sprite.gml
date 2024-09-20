function scr_change_player_life_sprite(){
	var _hp = obj_player.health_points;
	with (obj_player_life) {
    if (identifier == 5 and hp <= 20) {
        switch(_hp){
			case 20:
				hp = 4;
				break;
			case 19:
				hp = 3;
				break;
			case 18:
				hp = 2;
				break;
			case 17:
				hp = 1;
				break;
			case 16:
				hp = 0;
				break;
		}
    }
	if (identifier == 4 and hp <= 16) {
        switch(_hp){
			case 16:
				hp = 4;
				break;
			case 15:
				hp = 3;
				break;
			case 14:
				hp = 2;
				break;
			case 13:
				hp = 1;
				break;
			case 12:
				hp = 0;
				break;
		}
    }
	if (identifier == 3 and hp <= 12) {
        switch(_hp){
			case 12:
				hp = 4;
				break;
			case 11:
				hp = 3;
				break;
			case 10:
				hp = 2;
				break;
			case 9:
				hp = 1;
				break;
			case 8:
				hp = 0;
				break;
		}
    }
	if (identifier == 2 and hp <= 8) {
        switch(_hp){
			case 8:
				hp = 4;
				break;
			case 7:
				hp = 3;
				break;
			case 6:
				hp = 2;
				break;
			case 5:
				hp = 1;
				break;
			case 4:
				hp = 0;
				break;
		}
    }
	if (identifier == 1 and _hp <= 4) {
        switch(_hp){
			case 4:
				hp = 4;
				break;
			case 3:
				hp = 3;
				break;
			case 2:
				hp = 2;
				break;
			case 1:
				hp = 1;
				break;
			case 0:
				hp = 0;
				break;
		}
    }
}
}