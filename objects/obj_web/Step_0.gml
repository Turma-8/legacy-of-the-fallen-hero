if(place_meeting(x,y,obj_player)){
	speed = 0;
	image_index = 6;
	x = obj_player.x;
	y = obj_player.y;
	obj_player.is_rooted = true;
	if(alarm[0] == -1)
	alarm[0] = web_cooldown;
}

if(image_index == 5){
	image_index = 4;	
}