if(place_meeting(x,y,obj_player)){
	show_message(room_get_name(room));
	
	try {
		room_goto_next();
	} catch(_exception) {
		room_goto_previous();
	}
	
	obj_player.x = 320;
	obj_player.y = 320;
}