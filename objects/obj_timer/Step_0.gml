/// @description Insert description here
// You can write your code in this editor

if(timer > 0)
{
	timer = timer+delta_time/1000000 //incremento um segundo no timer
}
else timer = 0
{
	time = ceil(timer)	
}

if (timer >= 10) && !instance_exists(global.torre_check) && !instance_exists(global.boss_check)//spawna a torre após um tempo
{
	instance_create_layer(obj_torre_life.x,obj_torre_life.y,"Instances", global.torre_check)
}

