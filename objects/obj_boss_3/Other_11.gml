/// @description Insert description here
// You can write your code in this editor

var limite = instance_create_layer(obj_jogador.x, obj_jogador.y, "Instances", obj_final);

var counter = instance_create_layer(self.x, self.y, "Instances", obj_atk1_boss3);
	counter.speed = 3;
	counter.direction = point_direction(x, y, obj_jogador.x, obj_jogador.y);
	counter.image_angle = point_direction( x, y, obj_jogador.x, obj_jogador.y);


	
if (counter.x = limite.x) || (counter.y = limite.y){
	repeat(4){
	var fragmento = instance_create_layer(self.x, self.y, "Instances", obj_atk1_boss31)
		fragmento.speed = 4;
		fragmento.direction = xx;
		fragmento.image_angle = xx;	
		
		xx += 90;
}
xx = 0;
	}