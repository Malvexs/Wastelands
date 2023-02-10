draw_set_color(c_black)
		//Sprite de fundo do menu inicial
	    draw_sprite(sprite_index, 0, wgui-1, hgui+1)
		//Desenhando o background do menu
	    draw_sprite_ext(spr_bg_menu, image_index, wgui-195, hgui-240,menu_width/sprite_width, menu_height/sprite_height, 0, c_white,1)
	    //Desenhando o background das opções
	    draw_sprite_ext(spr_bg_opcoes, 0, wgui-170, hgui+180, bg_opcao_width/sprite_width, bg_opcao_height/sprite_height, 0, c_white,1) 
		draw_text(wgui+15, hgui-220, "Configurações")	
		for(var e = 0; e < 3; e++){
		    index = e;
			draw_sprite_ext(spr_bg_menu_opcao, 0,wgui+115,hgui-115 + bg_opcao_space*e, bg_opcao_width2/sprite_width, bg_opcao_height2/sprite_height, 0, c_white,1) 
		    x01 = wgui + 120 //A cordenada x do lado esquerdo do retangulo que queremos checkar.
			y01 = hgui-15 - bg_opcao_space/2 + bg_opcao_space*e //A cordenada y do lado superior do retangulo que queremos checkar.
			x02 = wgui + 185 //A cordenada x do lado direito do retangulo que queremos checkar.
			y02 = hgui-160 + bg_opcao_space/2 + bg_opcao_space*e //A cordenada y do lado inferior do retangulo que queremos checkar.
			
			if(point_in_rectangle(mx, my, x01, y01, x02, y02)){
				
			  draw_sprite_ext(spr_bg_menu_opcao, 1,wgui+115,hgui-115 + bg_opcao_space*e, bg_opcao_width2/sprite_width, bg_opcao_height2/sprite_height, 0, c_white,1) 
				
			  if(mouse_check_button(mb_left)){
			    if(index == 0){
					//mostrarQTinimigoMorto = true
				}
			  }
			}
			draw_rectangle_color(x01,y01,x02,y02, c_aqua, c_aqua, c_aqua, c_aqua, true);
		   
		}
		
		draw_text(wgui+15, hgui+190, "Voltar")	
		
		x11 = wgui - 170 //A cordenada x do lado esquerdo do retangulo que queremos checkar.
	    y11 = hgui+90 - bg_opcao_space/2 +121  //A cordenada y do lado superior do retangulo que queremos checkar.
	    x22 = wgui + 185 //A cordenada x do lado direito do retangulo que queremos checkar.
	    y22 = hgui+75 + bg_opcao_space/2 +121//A cordenada y do lado inferior do retangulo que queremos checkar.
			
	    if(point_in_rectangle(mx, my, x11, y11, x22, y22)){
			
	   //Desenhando a seta (esquerda) apontada pro item selecionado
	    draw_sprite_ext(spr_seta, image_index,wgui-135,hgui+188, selecionado_width/sprite_width, selecionado_height/sprite_height, 0, c_white,1)
	    //Desenhando a seta (direita) apontada pro item selecionado
	    draw_sprite_ext(spr_seta, image_index,wgui+150,hgui+214, selecionado_width/sprite_width, selecionado_height/sprite_height, 180, c_white,1)
		
		    if(mouse_check_button(mb_left)){
				openConfig= !openConfig;
				if(openConfig == false){
					instance_activate_all();
					surface_free(paused_surf);
					paused_surf = -1;
				}
		     }
	      }	