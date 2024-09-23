depth = -1;
if(!obj_player.can_shoot){
	visible = false;	
}
if(obj_player.ammo_points <= 0){
	image_index = 0;
} else {
	image_index = 1;	
}