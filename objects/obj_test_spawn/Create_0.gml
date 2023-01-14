//for(i=0;i < 50;i++){
	//instance_create_layer(irandom_range(obj_jogador.x+h_half,1366), irandom_range(obj_jogador.y+w_half,768),Fase_01,obj_enemy_01)
	
//}

/*for(i =0;i < 20;i++){
	instance_create_layer((obj_jogador.x+h_half), y,Fase_01,obj_enemy_02)
	instance_create_layer(x, obj_jogador.y+w_half+irandom(768),Fase_01,obj_enemy_02)
	instance_create_layer(((obj_jogador.x-h_half)),y,Fase_01,obj_enemy_02)
	instance_create_layer(x, ((obj_jogador.y-w_half)),Fase_01,obj_enemy_02)
	
}*/

randomize()
for(i=0;i < 500;i++){
	instance_create_layer(irandom_range(obj_jogador.x+h_half,1366),irandom_range(obj_jogador.y+w_half,768),Fase_01,obj_xp)
	
}