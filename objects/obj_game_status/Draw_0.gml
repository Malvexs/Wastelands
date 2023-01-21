/// @description barra de vida
// You can write your code in this editor

//Desenhando a barra de vida
draw_rectangle_color(obj_jogador.x-25,obj_jogador.y+25,obj_jogador.x+25,obj_jogador.y+30, c_black,c_black,c_black,c_black,false)
draw_rectangle_color(obj_jogador.x-hp/2,obj_jogador.y+25,obj_jogador.x+hp/2,obj_jogador.y+30, c_blue,c_blue,c_blue,c_blue,false)
draw_rectangle_color(obj_jogador.x,obj_jogador.y+25,obj_jogador.x,obj_jogador.y+30, c_white,c_white,c_white,c_white,false)
