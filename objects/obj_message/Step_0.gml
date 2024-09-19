if (has_fade_in and image_alpha < 1) {
	image_alpha += fade_time;
} else if (has_fade_out and image_alpha >= 1){
	image_alpha -= fade_time;	
}