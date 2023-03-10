/// @description desenha a vida das torres

//VIDA DA TORRE 1


var _gl = display_get_gui_width(); //pegar largura da janela

if (instance_exists(obj_torre_1)) && (obj_torre_parent.esta_perto == true)  //a vida só aparece se a torre existir e se o jogador estiver perto o suficiente
{
	var _sprl = sprite_get_width(spr_life_hud) * 3; //sprite hud da vida
	
	draw_sprite_ext(spr_life_hud, 0, _gl/2 - _sprl/2, 100, 3, 3, 0, c_white, 1); //desenha o hud da vida centralizado
	draw_sprite_ext(spr_torre_life, 0, _gl/2 - _sprl/2 + 6, 100, obj_torre_1.torre_hp/200 * 3 , 3, 0, c_white, 1); //desenha a vida dentro do hud (a divisão é feita pela vida total do boss)
	
}
/* Seta é criada quando a gente sai do campo de vida da torre
if (instance_exists(obj_torre_1)) && (!obj_torre_parent.esta_perto){
	var direcao = point_direction(x,y, obj_torre_1.x, obj_torre_1.y)
   draw_sprite(spr_seta, 0, _gl/2,direcao);
}
*/

//VIDA DA TORRE 2


var _gl = display_get_gui_width(); //pegar largura da janela

if (instance_exists(obj_torre_2)) && (obj_torre_parent.esta_perto == true)  //a vida só aparece se a torre existir e se o jogador estiver perto o suficiente
{
	var _sprl = sprite_get_width(spr_life_hud) * 3; //sprite hud da vida
	
	draw_sprite_ext(spr_life_hud, 0, _gl/2 - _sprl/2, 100, 3, 3, 0, c_white, 1); //desenha o hud da vida centralizado
	draw_sprite_ext(spr_torre_life, 0, _gl/2 - _sprl/2 + 6, 100, obj_torre_2.torre_hp/400 * 3 , 3, 0, c_white, 1); //desenha a vida dentro do hud (a divisão é feita pela vida total do boss)
	
}

//VIDA DA TORRE 3


var _gl = display_get_gui_width(); //pegar largura da janela

if (instance_exists(obj_torre_3)) && (obj_torre_parent.esta_perto == true)  //a vida só aparece se a torre existir e se o jogador estiver perto o suficiente
{
	var _sprl = sprite_get_width(spr_life_hud) * 3; //sprite hud da vida
	
	draw_sprite_ext(spr_life_hud, 0, _gl/2 - _sprl/2, 100, 3, 3, 0, c_white, 1); //desenha o hud da vida centralizado
	draw_sprite_ext(spr_torre_life, 0, _gl/2 - _sprl/2 + 6, 100, obj_torre_3.torre_hp/1000 * 3 , 3, 0, c_white, 1); //desenha a vida dentro do hud (a divisão é feita pela vida total do boss)
	
}

