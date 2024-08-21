/// @description Evento executado à cada 1 segundo

//Desativa e Reativa a movimentação padrão do mob
if(is_idle == true){
	is_idle = false;
} else {
	is_idle = true;
}

// Reativa o alarme para o próximo ciclo
alarm[0] = 60;