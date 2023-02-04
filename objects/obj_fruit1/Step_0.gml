/// @description Insert description here
// You can write your code in this editor
if distance_to_object(obj_jogador)<=obj_jogador.f_collect_range{
	var _dir = point_direction(x,y,obj_jogador.x,obj_jogador.y)
	fhspd = lengthdir_x(fspd,_dir)
	fvspd = lengthdir_y(fspd,_dir)
	
	x+=fhspd
	y+=fvspd
}