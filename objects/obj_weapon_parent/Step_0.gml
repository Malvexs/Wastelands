///@description colisão da arma com inimigo

var _list = ds_list_create(); //criar lista
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy_parent, false, true, _list, false); //criar retangulo de colisão

if (_num > 0) && (obj_jogador.weapon_cooldown[4] > 0){
	
    for (var i = 0; i < _num; ++i;){
		
		if(_list[| i].sprite_index == _list[| i].spr){
	
			//knockback							
			var dir = point_direction(x,y, _list[| i].x, _list[| i].y);
				_list[| i].x = _list[| i].x + lengthdir_x(10, dir);
				_list[| i].y = _list[| i].y + lengthdir_y(10, dir);
			
			//sprite branco
			_list[| i].sprite_index = _list[| i].sprW;
					
				//dano sofrido
				_list[| i].inimigo_hp -= dmg;
				
				obj_jogador.weapon_cooldown[4] -= 1;
				
				if obj_jogador.weapon_cooldown[4] == 0
				{
					instance_destroy();
					obj_jogador.weapon_cooldown[4] = obj_jogador.cooldown;
				}
			
				
			if(_list[| i].inimigo_hp <= 0){
				inimigoMorto = true;
				//destruir entidade
				instance_destroy(_list[| i]);
				//Dropando xp na layer do menu quando o personagem morre
				instance_create_layer(x,y,"Menu",obj_xp);
			}
		}
	}
}

ds_list_destroy(_list);

//CHEFES

//dano nos chefes

var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_boss_parent, false, true, _list, false);


if (_num > 0) && (obj_jogador.weapon_cooldown[4] > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		if(_list[| i].sprite_index == _list[| i].spr)
		{
			
			//knockback							
			var dir = point_direction(x,y, _list[| i].x, _list[| i].y);
				_list[| i].x = _list[| i].x + lengthdir_x(10, dir);
				_list[| i].y = _list[| i].y + lengthdir_y(10, dir);
			
			//sprite branco
			_list[| i].sprite_index = _list[| i].sprW;
					
				//dano sofrido
				_list[| i].boss_hp -= dmg; 	
				
				obj_jogador.weapon_cooldown[4] -= 1;
				
				if obj_jogador.weapon_cooldown[4] == 0
				{
					instance_destroy();
					obj_jogador.weapon_cooldown[4] = obj_jogador.cooldown;
				}
			
			if(_list[| i].boss_hp <= 0){
				inimigoMorto = true;
				//destruir entidade
				instance_destroy(_list[| i]);
				//Dropando xp na layer do menu quando o personagem morre				
				if (room_next(room) != -1)
				{
					instance_create_layer(0,0,"Instances",obj_transicao)
				}
			}
		}
	}
}

ds_list_destroy(_list);

//TORRES

//dano nas torres

var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_torre_parent, false, true, _list, false);

if (_num > 0) && (obj_jogador.weapon_cooldown[4] > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		if(_list[| i].sprite_index == _list[| i].spr)
		{
						
				//sprite branco
				_list[| i].sprite_index = _list[| i].sprW;
					
				//dano sofrido
				_list[| i].torre_hp -= dmg; 	
				
				obj_jogador.weapon_cooldown[4] -= 1;
				
				if obj_jogador.weapon_cooldown[4] == 0
				{
					instance_destroy();
					obj_jogador.weapon_cooldown[4] = obj_jogador.cooldown;
				}
							
			if (_list[| i].torre_hp <= 0)
			{
				//destruir entidade
				instance_destroy(_list[| i]);
				//destruir inimigos
				instance_destroy(obj_enemy_parent);
				instance_destroy(obj_control_enemy);
				//Spawnando boss após a torre ser destuída
				instance_create_layer(x,y,"Instances", global.boss_check);
			}
		}
	}
}

ds_list_destroy(_list);

