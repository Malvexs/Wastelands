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
		
		wgui = camera_get_view_x(view_camera[0]) + display_get_gui_width()/2
		hgui = camera_get_view_y(view_camera[0]) + display_get_gui_height()/2
		
	    draw_sprite(sprite_index, image_index, wgui-1, hgui+1)
		
		draw_set_font(bitmap_font)
		
		msg = "Wastelands"
		hp = string_height(msg)*ss+3
		wp = string_width(msg)*ss+3
		
		draw_text_transformed(wgui, hgui-200, msg,4*1.5, 4*1.5,image_angle);
		
		for(var i = 0; i < array_length(opcoes) ;i++){
	
			hp = string_height(opcoes[i])*ss+3
			wp = string_width(opcoes[i])*ss+3

			mx = device_mouse_x_to_gui(0) + camera_get_view_x(view_camera[0])
			my = device_mouse_y_to_gui(0) + camera_get_view_y(view_camera[0])
		
			x1 = wgui - wp/2
			y1 = hgui+30 - hp/2 + hp*i + ss*2
		
			x2 = wgui + wp/2
			y2 = hgui+30 + hp/2 + hp*i + ss*2	
		
			if(point_in_rectangle(mx, my, x1, y1, x2, y2)){
			
				ss = 4.1
			
				if(mouse_check_button(mb_left))
				{
				
					if(i == 1){
						paused = !paused;
						if(paused == false){
							instance_activate_all();
							surface_free(paused_surf);
							paused_surf = -1;
						}
					}
					
					if(i == 2){
						game_end();
					}
								
				}
			
			}else{
				ss = 4
			}
		
			draw_set_font(bitmap_font)
			msg = opcoes[i]
			draw_text_transformed(wgui, hgui+30 + hp*i, msg,ss, ss,image_angle);
							
		}		
		
		draw_set_valign(-1);
		draw_set_halign(-1)
		draw_set_font(-1)
		draw_set_color(c_white)
	}
}
