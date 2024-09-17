if(from_enemy and place_meeting(x,y,obj_player)){
	if(!obj_player.is_invencible)
		obj_player.health_points -= damage;	
	instance_destroy();
} else if(!from_enemy and place_meeting(x,y,obj_mob)){
	if(place_meeting(x,y,obj_mob)){
		var _mob_attacked_id = instance_place(x, y, obj_mob);
		with (_mob_attacked_id) {
			health_points -= 1;
			if (health_points <= 0) {
				instance_create_depth(x,y,-1,obj_death);
				instance_destroy();
			}
		}
	}
	instance_destroy();
}