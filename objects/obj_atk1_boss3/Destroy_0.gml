/// @description Insert description here
// You can write your code in this editor

repeat(4){
	var fragmento = instance_create_layer(self.x, self.y, "Instances", obj_atk1_boss31)
		fragmento.speed = 4;
		fragmento.direction = xx;
		fragmento.image_angle = xx;	
		
		xx += 90;
}
xx = 0;