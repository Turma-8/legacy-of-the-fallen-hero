if(from_enemy and place_meeting(x,y,obj_player)){
	if(!obj_player.is_invencible){
		audio_play_sound(obj_player.hitted_sound,1,false);
		obj_player.health_points -= damage;	
	}
} else if(!from_enemy and place_meeting(x,y,obj_mob)){
	if(place_meeting(x,y,obj_mob)){
		var _mob_attacked_id = instance_place(x, y, obj_mob);
		with (_mob_attacked_id) {
			audio_play_sound(hitted_sound,1,false);
			health_points -= 1;
			if (health_points <= 0) {
				instance_create_depth(x,y,-1,obj_death);
				instance_destroy();
			}
		}
	}
}

if (image_index >= image_number - 1) {
    instance_destroy(self);
}