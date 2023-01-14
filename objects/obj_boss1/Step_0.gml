if global.levelup==true{
	exit
}

spell_1_cd--

if spell_1_cd <=0{
	var _inst = instance_create_layer(x,y,"instances",obj_spell_boss1)
	_inst.speed = 1.5
	_inst.direction = point_direction(x,y,obj_player.x,obj_player.y)
	
	spell_1_cd = spell_1_timer
}

if hp<=0{
	instance_destroy()
	//room_goto_next()
	room_goto(Mapa2)
}
