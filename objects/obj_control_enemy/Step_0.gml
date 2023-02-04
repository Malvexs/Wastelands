/// @description spawn dos inimigos fora da tela

//spawn inimigo 1

if (obj_timer.timer >= 0.2){  //continue spawnanando os mais fracos

var _side=irandom(1)
if alarm[0]<=0{
	if _side=0{
		var _xx = irandom_range(global.cmx,global.cmx+global.cmw)
		var _yy = choose(global.cmy-16,global.cmy+global.cmh+16)
		instance_create_layer(_xx,_yy,"instances",global.inimigo_check1)
	}
	if _side=1{
		var _xx = choose(global.cmx-16, global.cmx+global.cmw+16)
		var _yy = irandom_range(global.cmy, global.cmy+global.cmh)
		instance_create_layer(_xx,_yy,"instances",global.inimigo_check1)
	}
	alarm[0] = spawn_timer
}
}
//spawn inimigo 2
if (obj_timer.timer > 60) /*&& (obj_timer.timer <= 120)*/{
var _side=irandom(1)
if alarm[1]<=0{
	if _side=0{
		var _xx = irandom_range(global.cmx,global.cmx+global.cmw)
		var _yy = choose(global.cmy-16,global.cmy+global.cmh+16)
		instance_create_layer(_xx,_yy,"instances",global.inimigo_check2)
	}
	if _side=1{
		var _xx = choose(global.cmx-16, global.cmx+global.cmw+16)
		var _yy = irandom_range(global.cmy, global.cmy+global.cmh)
		instance_create_layer(_xx,_yy,"instances",global.inimigo_check2)
	}
	alarm[1] = spawn_timer2
}
}
//spawn inimigo 3

if (obj_timer.timer > 180){
var _side=irandom(1)
if alarm[2]<=0{
	if _side=0{
		var _xx = irandom_range(global.cmx,global.cmx+global.cmw)
		var _yy = choose(global.cmy-16,global.cmy+global.cmh+16)
		instance_create_layer(_xx,_yy,"instances",global.inimigo_check3)
	}
	if _side=1{
		var _xx = choose(global.cmx-16, global.cmx+global.cmw+16)
		var _yy = irandom_range(global.cmy, global.cmy+global.cmh)
		instance_create_layer(_xx,_yy,"instances",global.inimigo_check3)
	}
	alarm[2] = spawn_timer3
}
}

//spawnar torre apos um tempo
/*
if (obj_timer.timer >= 20){
	instance_create_layer(obj_torre_life.x,obj_torre_life.y,"Instances",global.torre_check)
}
	
	