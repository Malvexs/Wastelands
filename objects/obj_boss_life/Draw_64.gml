/// @description desenha a vida dos boss

//VIDA DO BOSS 2

var _gl = display_get_gui_width(); //pegar largura da janela

if instance_exists(obj_boss_2) //a vida só aparece se o boss 2 existir
{
	var _sprl = sprite_get_width(spr_boss2_life_hud) * 3; //sprite hud da vida
	
	draw_sprite_ext(spr_boss2_life_hud, 0, _gl/2 - _sprl/2, 100, 3, 3, 0, c_white, 1); //desenha o hud da vida centralizado
	draw_sprite_ext(spr_boss_life, 0, _gl/2 - _sprl/2 + 6, 100, obj_boss_2.boss_hp/250 * 3 , 3, 0, c_white, 1); //desenha a vida dentro do hud (a divisão é feita pela vida total do boss)
	
}

//VIDA DO BOSS 

var _gl = display_get_gui_width(); //pegar largura da janela

if instance_exists(obj_boss) //a vida só aparece se o boss existir
{
	var _sprl = sprite_get_width(spr_boss_life_hud) * 3; //sprite hud da vida
	
	draw_sprite_ext(spr_boss_life_hud, 0, _gl/2 - _sprl/2, 100, 3, 3, 0, c_white, 1); //desenha o hud da vida centralizado
	draw_sprite_ext(spr_boss_life, 0, _gl/2 - _sprl/2 + 6, 100, obj_boss.boss_hp/300 * 3 , 3, 0, c_white, 1); //desenha a vida dentro do hud (a divisão é feita pela vida total do boss)
	
}

//VIDA DO BOSS 3

var _gl = display_get_gui_width(); //pegar largura da janela

if instance_exists(obj_boss_3) //a vida só aparece se o boss existir
{
	var _sprl = sprite_get_width(spr_boss_life_hud) * 3; //sprite hud da vida
	
	draw_sprite_ext(spr_boss3_life_hud, 0, _gl/2 - _sprl/2, 100, 3, 3, 0, c_white, 1); //desenha o hud da vida centralizado
	draw_sprite_ext(spr_boss_life, 0, _gl/2 - _sprl/2 + 6, 100, obj_boss_3.boss_hp/350 * 3 , 3, 0, c_white, 1); //desenha a vida dentro do hud (a divisão é feita pela vida total do boss)
	
}

