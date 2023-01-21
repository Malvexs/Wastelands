/// @description Insert description here
// You can write your code in this editor


//window_set_fullscreen(true)

cam = view_camera[0];

globalvar h_half;
h_half = camera_get_view_height(cam)/2;
globalvar w_half;
w_half = camera_get_view_width(cam)/2;

target = obj_jogador;
targetX = xstart;
targetY = ystart;

// variaveis de camera para o spawm de inimigos fora da camera do jogador

global.cmw=camera_get_view_width(cam)
global.cmh=camera_get_view_height(cam)

global.cmx=obj_jogador.x - global.cmw/2
global.cmy=obj_jogador.y - global.cmh/2


