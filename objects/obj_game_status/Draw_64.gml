var xpNoMomento;
xpNoMomento = ((xp/maxXP)*100); 
if(xpNoMomento > 100){
   xpNoMomento = 100;
}
/*Variável que indica em porcentagem o tanto de xp 
  que o personagem tem no exato momento
  utilizado para a criação da barra de xp*/
//Desenhando a barra de xp
 //desenha o hud do xp
draw_sprite_ext(spr_xp_hud, global.indexPeloRoom, +10, +4, 8.6, 0.8, 0, c_white, 1);
//desenha o xp dentro do hud (o preenchimento é feito pelo total de xp no momento)
draw_sprite_ext(spr_xp_hud_full, 0, +13.4, +7.5, xpNoMomento/11.15, 0.8, 0, c_white, 1);


//Desenhando os indicadores de level, experiência e xp target para melhor compreensão do funcionamento
draw_text_color(x+615,y-233,string("Level: ") + string(lvl),cor,cor,cor,cor,1);
//Desenhando a quantidade de inimigos mortos
draw_sprite_ext(spr_caveira, 0, x+550, y -225, 25/sprite_width, 25/sprite_height,0, c_white, 1);
draw_text_color(x+580,y-233, string(numeroDeMortos),cor,cor,cor,cor,1);
//draw_text_color(x+390,y-205,string("Experience: ") + string(xp),c_black,c_black,c_black,c_black,1);
//draw_text_color(x+390,y-190,string("XP Target: ") + string(maxXP),c_black,c_black,c_black,c_black,1);
//show_debug_message(inimigoMorto);
//show_debug_message(numeroDeMortos);