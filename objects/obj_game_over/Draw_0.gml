/// @description Insert description here
// You can write your code in this editor

if(game_over = true)
{
	instance_deactivate_all(true);
	
	var x1 = camera_get_view_x(view_camera[0]);
	var w = camera_get_view_width(view_camera[0]);
	var x2 = x1 + w;
	var meio_w = x1 + w/2;
	var y1 = camera_get_view_y(view_camera[0]);
	var h = camera_get_view_height(view_camera[0]);
	var y2 = y1 + h;
	var meio_h = y1 + h/2;
	
	var qtd = h* .15;
	
	valor = lerp(valor, 1, .05);
	
	draw_set_color(c_black);
	
	draw_set_alpha(valor - .2);
	draw_rectangle(x1, y1, x2, y2, false);
	
	draw_rectangle(x1, y1, x2, y1+qtd*valor, false);
	
	draw_rectangle(x1, y2, x2, y2-qtd*valor, false);
	
	draw_set_alpha(1);
	draw_set_color(-1);
	
	if valor > .85
	{
		contador = lerp(contador, 1, .01);
		draw_set_alpha(contador)
		draw_set_font(f_game_over);
		draw_set_valign(1);
		draw_set_halign(1);
		
		draw_set_color(c_red);
		draw_text(meio_w+1,meio_h+1, "G a m e - O v e r");
	
		
		draw_set_color(c_white);
		draw_text(meio_w,meio_h, "G a m e - O v e r");
		draw_set_font(-1);
		
		draw_set_font(-1);
		draw_text(meio_w, meio_h+40, "Pressione ENTER para continuar" )
		
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_alpha(-1);
		
		if contador > .50
		{
			if(keyboard_check(vk_alt)) game_restart();
		}
	}
}
else
{
valor = 0;
}


