if (paused == true) {

if !surface_exists(paused_surf) {
    if paused_surf == -1 {
		 instance_deactivate_all(true);
    }
    paused_surf = surface_create(display_get_gui_width(), display_get_gui_height());

	surface_set_target(paused_surf);
    surface_reset_target();
	
	}else{
        draw_set_valign(fa_top); 
		draw_set_halign(fa_center);
		draw_set_font(f_tn)  
		draw_set_color(c_black) 
		
		msg1 = "Iniciar jogo"
		msg2 = "Configurações"
		msg3 = "Sair"
		
		wgui = camera_get_view_x(view_camera[0]) + display_get_gui_width()/2
		hgui = camera_get_view_y(view_camera[0]) + display_get_gui_height()/2
		
	    draw_sprite(sprite_index, image_index, wgui-1, hgui+1)
		                                    
		draw_sprite_ext(spr_bg_menu_opcao, 3, wgui-145, hgui+120, bg_opWidth/sprite_width, bg_opHeight/sprite_height, 0, c_white, 1)
		draw_text_transformed(wgui-4, hgui+133, msg1, 2,2,image_angle)
		draw_sprite_ext(spr_bg_menu_opcao, 3, wgui-530, hgui+220, bg_opWidth/sprite_width, bg_opHeight/sprite_height, 0, c_white, 1)
		draw_text_transformed(wgui-385, hgui+233, msg2, 2,2,image_angle)
		draw_sprite_ext(spr_bg_menu_opcao, 3, wgui+235, hgui+220, bg_opWidth/sprite_width, bg_opHeight/sprite_height, 0, c_white, 1)
		draw_text_transformed(wgui+385, hgui+233, msg3, 2,2,image_angle)
		
		
		mx = device_mouse_x_to_gui(0) + camera_get_view_x(view_camera[0])
		my = device_mouse_y_to_gui(0) + camera_get_view_y(view_camera[0])
	
		x1 = wgui - 530 //A cordenada x do lado esquerdo do retangulo que queremos checkar.
		y1 = hgui + 220 //A cordenada y do lado superior do retangulo que queremos checkar.
		x2 = wgui - 240 //A cordenada x do lado direito do retangulo que queremos checkar.
		y2 = hgui + 285 //A cordenada y do lado inferior do retangulo que queremos checkar.
		
		//Primeira opção "Configurações"
		if (point_in_rectangle(mx, my, x1, y1, x2, y2)){	
			
			draw_sprite_ext(spr_bg_menu_opcao, 2, wgui-530, hgui+220, bg_opWidth/sprite_width, bg_opHeight/sprite_height, 0, c_white, 1)
		    draw_text_transformed(wgui-385, hgui+233, msg2, 2,2,image_angle)
			if(mouse_check_button(mb_left)){
			   
			}
		}
		
		x1 = wgui + 235
	    y1 = hgui + 220	
		x2 = wgui + 525
		y2 = hgui + 285
		
		//Segunda opção "sair"
		if (point_in_rectangle(mx, my, x1, y1, x2, y2)){
			
			draw_sprite_ext(spr_bg_menu_opcao, 2, wgui+235, hgui+220, bg_opWidth/sprite_width, bg_opHeight/sprite_height, 0, c_white, 1)
		    draw_text_transformed(wgui+385, hgui+233, msg3, 2,2,image_angle)
			
			if(mouse_check_button(mb_left)){
			   game_end();
			}
		}
		
		x1 = wgui - 145
	    y1 = hgui + 120	
		x2 = wgui + 145
		y2 = hgui + 185
		
		//Terceira opção "entrar no jogo"
		if (point_in_rectangle(mx, my, x1, y1, x2, y2)){	
			
			draw_sprite_ext(spr_bg_menu_opcao, 2, wgui-145, hgui+120, bg_opWidth/sprite_width, bg_opHeight/sprite_height, 0, c_white, 1)
		    draw_text_transformed(wgui-4, hgui+133, msg1, 2,2,image_angle)
			
			if(mouse_check_button(mb_left)){
			   paused = !paused;
			   if(paused == false){
				  instance_activate_all();
				  surface_free(paused_surf);
				  paused_surf = -1;
			   }
		    }
		}		
		
		draw_set_valign(-1);
		draw_set_halign(-1)
		draw_set_font(-1)
		draw_set_color(c_white)
	}
}
