depth = -1;
if(obj_player.ammo_points <= 0){
	image_index = 0;
	instance_destroy(obj_player_aim);
} else {
	if(instance_number(obj_player_aim) == 0){
		instance_create_depth(x,y,-2,obj_player_aim);
	}
	image_index = 1;	
}