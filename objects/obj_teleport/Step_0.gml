if(place_meeting(x,y,obj_player)){
	try {
		room_goto(room_name);
	} catch(_exception) {
		room_goto(room);
	}
	obj_player.x = player_x_position;
	obj_player.y = player_y_position;
}