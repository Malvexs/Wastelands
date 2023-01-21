if (paused == true) {

if !surface_exists(paused_surf) {
    if paused_surf == -1 {
		 instance_deactivate_all(true);
    }
    paused_surf = surface_create(display_get_gui_width(), display_get_gui_height());

	surface_set_target(paused_surf);
    surface_reset_target();
	
	}else{
        draw_set_valign(fa_top); //Alinhamento vertical das letras (em cima)
		draw_set_halign(fa_center); //Alinhamento horizontal das letras (a esquerda)
		draw_set_font(f_tn)  //Setando a fonte que sera utilizada pra escrever as opções
		
		/*w_gui = display_get_gui_width();
		h_gui = display_get_gui_height();*/
		
		wgui = camera_get_view_x(view_camera[0]) + display_get_gui_width()/2
		hgui = camera_get_view_y(view_camera[0]) + display_get_gui_height()/2
		
		//Pegando o último frame do jogo
		draw_sprite(screenShot,0,camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]))
		
		draw_set_color(c_black); //Setando uma cor pra ser utilizada (Preto)
		/*draw_set_alpha(.7); //Opacidade do fundo
		draw_rectangle(0,0,w_gui,h_gui,false); //Desenhando um retangulo de fundo quando pausado o jogo
		draw_set_alpha(1);//Resetando a opacidade */
		
		//Desenhando o background do menu
		draw_sprite_ext(sprite_index, image_index, wgui-200, hgui-225,menu_width/sprite_width, menu_height/sprite_height, 0, c_white,1)
	
		for(var i = 0; i < op_max; i++){
			index = i;
			//Desenhando o background das opções
			draw_sprite_ext(spr_bg_opcoes, 0,wgui-175,hgui+60 + bg_opcao_space*i, bg_opcao_width/sprite_width, bg_opcao_height/sprite_height, 0, c_white,1) 
		    //Escrevendo as opções
			draw_text_transformed(wgui+10, hgui+70 + bg_opcao_space*i , opcoes[i], 1,1,image_angle)
			
			mx = device_mouse_x_to_gui(0) + camera_get_view_x(view_camera[0])
			my = device_mouse_y_to_gui(0) + camera_get_view_y(view_camera[0])
		
			x1 = wgui - 170 //A cordenada x do lado esquerdo do retangulo que queremos checkar.
			y1 = hgui+90 - bg_opcao_space/2 + bg_opcao_space*i //A cordenada y do lado superior do retangulo que queremos checkar.
			x2 = wgui + 185 //A cordenada x do lado direito do retangulo que queremos checkar.
			y2 = hgui+75 + bg_opcao_space/2 + bg_opcao_space*i //A cordenada y do lado inferior do retangulo que queremos checkar.
			
			if(point_in_rectangle(mx, my, x1, y1, x2, y2)){
				
				//Desenhando o indicador de selencionado (Esquerda)
				draw_sprite_ext(spr_selecionado, 0,wgui-140,hgui+80 + bg_opcao_space*i, selecionado_width/sprite_width, selecionado_height/sprite_height, 0, c_white,1)
				//Desenhando o indicador de selencionado (Direita)
				draw_sprite_ext(spr_selecionado, 0,wgui+155,hgui+80 + bg_opcao_space*i, selecionado_width/sprite_width, selecionado_height/sprite_height, 0, c_white,1) 
			
				if(mouse_check_button(mb_left)){
					//Segunda opção
					if(index == 1){
						paused = !paused;
						if(paused == false){
							instance_activate_all();
							surface_free(paused_surf);
							paused_surf = -1;
						}
					}
					//Terceira opção (fecha o jogo direto, mas na verdade era pra ir pra "página inicial" do jogo)
					if(index == 2){
						game_end();
					}
				}	
				
			}
			
		}	
		//fechar o menu de pausa
		if(keyboard_check_pressed(vk_escape)){
	
			paused = !paused;
			if(paused == false){
				instance_activate_all();
				surface_free(paused_surf);
				paused_surf = -1;
			}
	    }	
		
		draw_set_valign(-1); //Resetando alinhamento vertical
		draw_set_halign(-1); //Resetando alinhamento horizontal
		draw_set_font(-1); //Resetando a font
		draw_set_color(c_white);//Resetando a cor
	}
}
