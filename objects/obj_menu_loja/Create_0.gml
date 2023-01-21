//Controlando se o jogo está pausado ou não
paused = false; //Jogo inicialmente não está pausado
//Controle interno para verificar de a loja está aberta ou não
lojaOpen = false; //Loja inicialmente fechado
poderes_escolhidos = 0 //Quantidade de poderes escolhidos, inicialmente 0
paused_surf = -1; 

//Backgroud menu
menu_width = 414 //Largura do menu
menu_height = 470 //Altura do menu

//Background das opções
bg_opcao_width = 390 //Largura da sprite de fundo das opções
bg_opcao_height = 100 //Altura da sprite de fundo das opções
bg_opcao_space = 100 //Espaçamento entre as sprites das opções

//Background dos poderes
bg_poderes_width = 90 //Largura da sprite de fundo dos poderes
bg_poderes_height = 82 //Altura da sprite de fundo dos poderes

//Poderes
poderes_width = 30 //Largura da sprite dos poderes
poderes_height = 30 //Altura da sprite dos poderes

//Setas
setas_width = 40 //Largura da sprite da seta
setas_height = 40 //Altura da sprite da seta

screenShot = sprite_create_from_surface(application_surface,view_xview[0],view_yview[0],view_wview[0],view_hview[0],0,0,0,0)   
	
global.chosen_ones = []
escolhidos = []

while(poderes_escolhidos < 3 && array_length(escolhidos) < array_length(global.powers)){
		
	menu_length = array_length(global.powers) - 1 
	x = irandom(menu_length)
		
	if(array_get_value(global.chosen_ones, global.powers[x]) == -1){
		if(global.powers[x][3] < global.powers[x][4]){
			array_push(global.chosen_ones, global.powers[x])
			poderes_escolhidos += 1
		}
		if(array_get_value(escolhidos, global.powers[x]) == -1){
			array_push(escolhidos, global.powers[x])
		}
	}
		
}
tamanho = array_length(global.chosen_ones); 
	
if(poderes_escolhidos < 3){
		
}
	
paused = !paused; //inverte
lojaOpen = !lojaOpen; //inverte
	
if(paused == false){
    instance_activate_all();
    surface_free(paused_surf);
    paused_surf = -1;
}

//randomize()
