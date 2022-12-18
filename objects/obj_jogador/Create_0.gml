//<<<<<<< HEAD
#region variaveis de movimentacao
//andar, velocidade = 2
walkspeed = 2; 

//>>>>>>> acb4ac3234b54f41ff86162396d7a494c75c27ad
#endregion

#region intervalo dos atks
//intervalo dos atks

alarmtime[0] = 120; //melee

alarmtime[1] = 1; //machado

alarmtime[2] = 1; //bola de fogo

alarmtime[3] = 30; //facas

alarm[0] = alarmtime[0]; //melee

alarm[1] = alarmtime[1]; //machado

alarm[2] = alarmtime[2]; //bola de fogo

alarm[3] = alarmtime[3]; //facas

slot[0] = "melee";
slot[1] = "axe";
slot[2] = "fireball";
slot[3] = "faca"

#endregion 
 //poderes
global.powers = [
	["Bola de fogo","Lança bolas fogo", spr_fireball, 0, 5], 
	["Machado","Atira machados", spr_axe, 0, 5], 
	["Murasame","Hit kill. Ataque lento", spr_meleeExemplo, 0, 5],
	["Bola de gelo", "Dano e atrasa os inimigos", spr_fireball, 0, 5],
	["power 4","power 4 info", spr_axe, 0, 5],
	["power 5","power 5 info", spr_fireball, 0, 5],
	["power 6","power 6 info", spr_meleeExemplo, 0, 6],
	["power 7","power 7 info", spr_fireball, 0,3]  
		]
array_push(global.powers, ["Power 8","P8", spr_fireball, 0,5])

melee0 = 0;
axe0 = 0;
fire0 = 0;
faca0 = 0;

melee_up = 0;
axe_up = 0;
fireball_up = 0;
faca_up = 0;

melee_dmg = 5 + melee_up;
axe_dmg = 30;
fireball_dmg = 15 + fireball_up;
faca_dmg = 5 + faca_up;