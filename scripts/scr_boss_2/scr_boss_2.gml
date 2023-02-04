
function scr_boss_escolher_ataque() //funcão para alternar entre 2 ataques por vez
{
	if alarm[1] <= 0 
	{		
		var _ataque = choose(scr_boss_ataque_1, scr_boss_ataque_2); //escolhe aleatoriamente um atk
		estado = _ataque; //muda estado para ataque
		alarm[1] = 30;
	}

}

function scr_boss_ataque_1() //funcao do primeiro atk
{	
	//atacar em diferentes direções
	
	obj_boss_parent.speed = 0;
	sprite_index = spr_boss_2idle;
	obj_boss_parent.spr = spr_boss_2idle;
	
	if ataque_boss mod 2 == 1 //se for impar variavel de direção recebe um valor
	{
		var _dir = 0;
	}
	else if ataque_boss mod 2 == 0 //se for par variavel de direção recebe um valor
	{
		var _dir = 22.5;
	}
		
		if ataque_boss > 0 
		{
			if alarm[1] <= 0
			{
				repeat(8) //cria varios objetos do projetil
				{
					var _inst = instance_create_layer(x, y, "Instances", obj_projetil_boss_2); //cria obj do projetil
					_inst.speed = 2; //velocidade do projetil
					_inst.direction = _dir; //direção do projetil
		
					_dir += 45; //cria os objetos em varias direções
				}
			
				ataque_boss -= 1; //decresce um na variável
				alarm[1] = 300; //acrescenta um cooldown
			}	
		}
		else
		{
			estado = scr_boss_escolher_ataque; //volta para estado de escolher atk quando
			ataque_boss = 3; //variavel volta para o seu valor inical de repetição
			obj_boss_parent.speed = obj_boss_parent.velocidade_boss;
			sprite_index = spr_boss_2;
			obj_boss_parent.spr = spr_boss_2;
		}
}

//esta funcao tem a mesma lógica que a funcao acima, apenas com algumas modificações nos valores

function scr_boss_ataque_2()
{
	
	obj_boss_parent.speed = 0;
	sprite_index = spr_boss_2idle;
	obj_boss_parent.spr = spr_boss_2idle;
	
	if ataque2_boss mod 2 == 1
	{
		var _dir = 0;
	}
	else if ataque2_boss mod 2 == 0
	{
		var _dir = 22.5;
	}

		if ataque2_boss > 0
		{
			if alarm[1] <= 0
			{
				repeat(12)
				{
					var _inst = instance_create_layer(x,y, "Instances", obj_projetillento_boss_2);
					_inst.speed = 1;
					_inst.direction = _dir;
		
					_dir += 45;
				}
		
				ataque2_boss -= 1;
				alarm[1] = 300;
			}	
		}
		else
		{
			estado = scr_boss_escolher_ataque;
			ataque2_boss = 2;
			obj_boss_parent.speed = obj_boss_parent.velocidade_boss;
			sprite_index = spr_boss_2;
			obj_boss_parent.spr = spr_boss_2;
		}
}