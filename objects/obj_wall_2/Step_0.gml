if(!instance_exists(obj_mob)){
	instance_destroy();
}

if("rm_ice" == string_copy(room_get_name(room), 1, 6)){
	image_blend = c_blue;
}