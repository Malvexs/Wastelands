var xpNoMomento;
xpNoMomento = ((xp/maxXP)*100); 
if(xpNoMomento > 100){
	xpNoMomento = 100;
}	
/*Variável que indica em porcentagem o tanto de xp 
  que o personagem tem no exato momento
  utilizado para a criação da barra de xp*/
//Desenhando a barra de xp
//draw_healthbar(x-410, y-250, x+700, y-240, xpNoMomento, c_black, c_aqua, c_aqua, 0, true, true);

draw_sprite_ext(spr_xp_hud, 0, +10, +4, 8.6, 0.8, 0, c_white, 1); //desenha o hud do xp
draw_sprite_ext(spr_xp_hud_full, 0, +13.4, +7.5, xpNoMomento/15, 0.8, 0, c_white, 1); //desenha a vida dentro do hud (a divisão é feita pela vida total do boss)

//Desenhando os indicadores de level, experiência e xp target para melhor compreensão do fincionamento
draw_text_color(x+390,y-220,string("Level: ") + string(lvl),c_white,c_white,c_white,c_white,1);
draw_text_color(x+390,y-205,string("Experience: ") + string(xp),c_white,c_white,c_white,c_white,1);
draw_text_color(x+390,y-190,string("XP Target: ") + string(maxXP),c_white,c_white,c_white,c_white,1);

//show_debug_message(xpNoMomento);