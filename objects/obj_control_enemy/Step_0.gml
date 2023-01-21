/// @description Insert description here
// You can write your code in this editor

var _side=irandom(1)
if alarm[0]<=0{
	if _side=0{
		var _xx = irandom_range(global.cmx,global.cmx+global.cmw)
		var _yy = choose(global.cmy-16,global.cmy+global.cmh+16)
		instance_create_layer(_xx,_yy,"instances",obj_enemy_orc)
	}
	if _side=1{
		var _xx = choose(global.cmx-16, global.cmx+global.cmw+16)
		var _yy = irandom_range(global.cmy, global.cmy+global.cmh)
		instance_create_layer(_xx,_yy,"instances",obj_enemy_orc)
	}
	alarm[0] = spawn_timer
}

