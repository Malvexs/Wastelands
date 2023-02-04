/// @description destruir e spawnar entidades

//verificar a fase para spawnar o boss e a torre referente à ela

if room_get_name(room) == "Fase_01"
{
	global.boss_check = obj_boss;
	global.torre_check = obj_torre_1;
	global.inimigo_check1 = obj_enemy_01 
	global.inimigo_check2 = obj_enemy_02
	global.inimigo_check3 = obj_enemy_03
	
	if !instance_exists(obj_control_enemy) && (obj_timer.timer <= 0.2)
	{
		instance_create_layer(obj_jogador.x,obj_jogador.y, "Instances", obj_control_enemy)
	}
}	
else if room_get_name(room) == "Mapa2"
{
	global.boss_check = obj_boss_2;
	global.torre_check = obj_torre_2;
	global.inimigo_check1 = obj_enemy_04
	global.inimigo_check2 = obj_enemy_05
	global.inimigo_check3 = obj_enemy_06
	
	if !instance_exists(obj_control_enemy) && (obj_timer.timer <= 0.2)
	{
		instance_create_layer(obj_jogador.x,obj_jogador.y, "Instances", obj_control_enemy)
	}
	
}
else if room_get_name(room) == "Mapa3"
{
	global.boss_check = obj_boss_3;
	global.torre_check = obj_torre_3;
	global.inimigo_check1 = obj_enemy_07
	global.inimigo_check2 = obj_enemy_08
	global.inimigo_check3 = obj_enemy_09
	
	if !instance_exists(obj_control_enemy) && (obj_timer.timer <= 0.2)
	{
		instance_create_layer(obj_jogador.x,obj_jogador.y, "Instances", obj_control_enemy)
	}

}


//destruir todos os inimigos parar o spawn e spawnar boss

if keyboard_check_released(vk_alt) && keyboard_check_released(vk_shift)
{
	obj_control_enemy.alarm[0] = 1000000;
	obj_control_enemy.alarm[1] = 1000000;
	obj_control_enemy.alarm[2] = 1000000;
	instance_destroy(obj_enemy_parent);
	instance_destroy(obj_torre_parent);
	instance_create_layer(obj_torre_life.x, obj_torre_life.y, "Instances", global.boss_check);
}

//recriar objetos destruidos

if keyboard_check_released(vk_f11) && !instance_exists(obj_enemy_parent)
{
	obj_control_enemy.alarm[0] = 1;
	obj_control_enemy.alarm[1] = 1;
	obj_control_enemy.alarm[2] = 1;
	instance_create_layer(obj_torre_life.x, obj_torre_life.y, "Instances", obj_torre_parent);
	instance_create_layer(obj_torre_life.x, obj_torre_life.y, "Instances", global.torre_check);
	instance_create_layer(x,y, "Instances", obj_enemy_parent);
	instance_destroy(global.boss_check);
	
}

//matar boss e ir para proxima fase

if keyboard_check_released(vk_control) && keyboard_check_released(vk_alt)
{
	instance_destroy(obj_boss_parent);	
	if (room_next(room) != -1)
	{
		instance_create_layer(0,0,"Instances",obj_transicao)
	}
}