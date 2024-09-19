/// @description Salva e Carrega todos os Dados do Jogo
/// @author Max David
function save_game(_data){
	game_save(_data);
}

function load_game(_data){
	try {
		game_load(_data);
	} catch(_exception) {
		game_load("menu.dat");	
	}
}