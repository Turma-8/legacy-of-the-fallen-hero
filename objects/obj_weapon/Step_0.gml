sprite_index = sprite;	

if(weapon_name == "sword"){
		audio_play_sound(snd_sword,1,false);
		damage = 1;
		if(used_by_enemy){
			image_blend = c_gray;
			if(place_meeting(x,y,obj_player) and !obj_player.is_invencible){
				audio_play_sound(obj_player.hitted_sound,1,false);
				obj_player.health_points -= damage;
				obj_player.is_invencible = true;
			}
		} else {
			//Aumentando a espada do jogador (olha a malícia)
			image_xscale += 0.035;
			image_yscale += 0.035;
			if(place_meeting(x,y,obj_mob) and !used_by_enemy){
				var _mob_attacked_id = instance_place(x, y, obj_mob);
				with (_mob_attacked_id) {
					if(!is_hitted){
						audio_play_sound(hitted_sound,1,false);
						health_points--;
						is_hitted = true;
					}
					if (health_points <= 0) {
						instance_create_depth(x,y,-1,obj_death);
						instance_destroy();
					}
				}
			}
		}
}

if(image_index == 1) {
	switch(weapon_name){
	case "staff":
		audio_play_sound(snd_staff,1,false);
		var _magic = instance_create_layer(x,y,"Instances",obj_boss_magic_1);
		_magic.direction = direction;
		_magic.image_angle = direction;
		if(used_by_enemy){
			_magic.from_enemy = true;	
		}
		break;
	case "bow":
		audio_play_sound(snd_bow,1,false);
		audio_play_sound(snd_arrow,1,false);
		var _arrow = instance_create_layer(x,y,"Instances",obj_arrow);
		_arrow.direction = direction;
		_arrow.image_angle = direction;
		if(used_by_enemy){
			_arrow.from_enemy = true;	
		}
		break;
	case "shield":
		break;
	}
}

if (image_index >= image_number - 1) {
    instance_destroy(self);
}