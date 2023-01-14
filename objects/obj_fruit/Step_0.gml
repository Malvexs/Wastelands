if distance_to_object(obj_player)<=obj_player.collect_range{
	var _dir=point_direction(x,y,obj_player.x,obj_player.y)
	hspd = lengthdir_x(spd,_dir)
	vspd = lengthdir_y(spd,_dir)
	
	x+=hspd
	y+=vspd
}