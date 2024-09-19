identifier = 1;
if(obj_player.health_points % 4 == 0 and instance_number(obj_life) <= 1){
	for(var _i = 1; _i < (obj_player.health_points / 4); _i++){
		var _life = instance_create_layer(x + (spacing * (_i)),y,"Instances",obj_life);
		_life.hp = 4;
		_life.identifier = _i+1;
	}
}