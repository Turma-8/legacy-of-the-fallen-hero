depth = -1;

if(obj_player.alarm[0] == -1 and obj_player.can_dash){
	visible = true;
	image_blend = c_white;
} else {
	visible = true;
	image_blend = c_dkgrey;
}

if(!obj_player.can_dash and obj_player.alarm[0] == -1){
	visible = false;	
}