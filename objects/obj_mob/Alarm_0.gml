/// @description Função executada à cada 1 segundo
if(is_idle == true)
	is_idle = false;
else
	is_idle = true;

// Reativa o alarme para o próximo ciclo
alarm[0] = 60;