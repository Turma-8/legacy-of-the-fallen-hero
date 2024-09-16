if(from_enemy and place_meeting(x,y,obj_player)){
	obj_player.health_points -= damage;	
} else if(!from_enemy and place_meeting(x,y,obj_mob)){
	obj_mob.health_points -= damage;	
}

if (image_index >= image_number - 1) {
    instance_destroy();
}