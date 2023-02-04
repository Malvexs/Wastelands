/// @description Insert description here
// You can write your code in this editor

globalvar lvl; //Nível do personagem
lvl = 1;

globalvar xp; //Xp inicial do personagem
xp = 0;

globalvar maxXP; //Xp máximo
maxXP = (30 + (lvl * 100) - 20);//Formula que calcula o número total de xp necessário pra passar de nível

globalvar maxHp;
maxHp = 40;

globalvar hp; //Vida do personagem principal
hp = 40
//Cor utilizada para escrever os dados

//Indicador das fases
globalvar Fase01;
Fase01 = false;
if (room_get_name(room) == "Fase_01"){Fase01 = true; }

globalvar Fase02;
Fase02 = false;
if (room_get_name(room) == "Mapa2"){Fase02 = true;}

globalvar Fase03;
Fase03 = false;
if(room_get_name(room) == "Mapa3"){
	Fase03 = true;

}

globalvar inimigoMorto;
inimigoMorto = false;

globalvar numeroDeMortos;
numeroDeMortos = 0;

global.loja_compras_finalizadas = 0;

timer_xp = 20;
alarm[0] = timer_xp;


