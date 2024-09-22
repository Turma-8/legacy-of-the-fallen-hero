/// @description Salva e Carrega todos os Dados do Jogo
/// @author Max David
function save_game(_data){
	game_save(_data);
}

function load_game(_data){
	if(!file_exists(_data)){
		show_message("Não existem arquivos salvos na sua jornada.");
		return false;
	} else {
		game_load(_data);
		return true;
	}
}