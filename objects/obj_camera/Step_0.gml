/// @description Insert description here
// You can write your code in this editor

global.cmx=lerp(global.cmx,obj_jogador.x-(global.cmw/2),0.2)
global.cmy=lerp(global.cmy,obj_jogador.y-(global.cmh/2),0.2)

camera_set_view_pos(view_camera[0],global.cmx,global.cmy)

/*if object_exists(target)
{
	targetX = target.x;
	targetY = target.y;
}

var _x = targetX;
var _y = targetY;

camera_set_view_pos(cam, _x- w_half, _y-h_half);

