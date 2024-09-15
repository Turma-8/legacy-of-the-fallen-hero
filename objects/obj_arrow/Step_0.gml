if(from_enemy and place_meeting(x,y,obj_player)){
	obj_player.health_points -= damage;	
	instance_destroy();
} else if(!from_enemy and place_meeting(x,y,obj_mob)){
	obj_mob.health_points -= damage;	
	instance_destroy();
}