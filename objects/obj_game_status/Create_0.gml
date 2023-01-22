/// @description Insert description here
// You can write your code in this editor

globalvar lvl; //Nível do personagem
lvl = 1;

globalvar xp; //Xp inicial do personagem
xp = 0;

globalvar maxXP; //Xp máximo
maxXP = 550//(30 + (lvl * 100) - 20); Formula que calcula o número total de xp necessário pra passar de nível

globalvar hp; //Vida do personagem principal
hp = 40;

global.loja_compras_finalizadas = 0

timer_xp = 20;
alarm[0] = timer_xp;