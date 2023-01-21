/// @description Insert description here
// You can write your code in this editor

depth = -y

//troca de lado do inimigo
var _border=64
if y<global.cmy - _border{
	y=global.cmy+global.cmh+_border
}
if y<global.cmy + global.cmh+_border{
	y=global.cmy-_border
}
if x<global.cmx - _border{
	x=global.cmx+global.cmw+_border
}
if x<global.cmx + global.cmw+_border{
	x=global.cmx-_border
}

if hspd!=0{
	image_xscale=sign(-hspd)
}

dir=point_direction(x,y,obj_jogador.x,obj_jogador.y)
hspd=lengthdir_x(spd,dir)
vspd=lengthdir_y(spd,dir)

x+=hspd
y+=vspd