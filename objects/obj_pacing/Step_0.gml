//Taxa de Desaparecimento do Pacing
image_alpha -= pacing_rate;
if(image_alpha <= 0) {
	instance_destroy(self);	
} else {
	sprite_index = sprite;
}