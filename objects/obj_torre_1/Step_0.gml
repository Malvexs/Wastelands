/// @description Insert description here
// You can write your code in this editor
/*
if torre_hp<=0{
	instance_create_layer(x,y,"Instances",obj_boss1)
	
	instance_destroy()
}
/*
if place_meeting(x,y, obj_jogador){
	hitpoints -= 5
}
*/
if distance_to_object(obj_jogador) < range //se estiver perto o suficiente
{
	esta_perto = true;
}
else 
{
	esta_perto = false;
}

depth =	-y;