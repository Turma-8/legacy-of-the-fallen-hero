/// @description Altera o sprite de um objeto através da sua direção
/// @author Max David
function scr_change_movement_sprite(_object, _movement_sprites){
	if((_object.direction > 45) and (_object.direction < 135)){
		_object.sprite_index = _movement_sprites[0];
	} else if((_object.direction < 45) or (_object.direction > 315)){
		_object.sprite_index = _movement_sprites[1];
	} else if((_object.direction > 225) and (_object.direction < 315)){
		_object.sprite_index = _movement_sprites[2];
	} else if((_object.direction < 225) and (_object.direction > 135)){
		_object.sprite_index = _movement_sprites[3];
	}
}