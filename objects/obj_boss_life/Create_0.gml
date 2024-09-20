identifier = 1;
sprite_index = sprite;
//Cria 'n' instâncias deste objeto baseado nos pontos de vida do personagem
if(instance_number(obj_boss_life) <= 1){
	for(var _i = 1; _i < (boss.health_points / 4); _i++){
		var _life = instance_create_layer(x + (spacing * (_i)),y,"Instances",obj_boss_life);
		_life.hp = 4;
		_life.identifier = _i+1;
		_life.sprite_index = sprite;
	}
}