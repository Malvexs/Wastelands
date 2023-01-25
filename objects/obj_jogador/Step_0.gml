boost_walk = 0


#region movimentação

boost_walk = 0

//andar com setinhas e com wasd

var left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
var up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var down = (keyboard_check(vk_down ) ||  keyboard_check(ord("S")));

if (down = true) or (up = true) or (right = true) or (left = true){
	boost_walk = walkspeed*lvl*0.05
	sprite_index = spr_jogador_movimento
}
else{
	boost_walk = 0;
	sprite_index = spr_jogador_parado
}

var horizontal = (right - left)
var vertical   = (down - up)


//colisão horizontal com o mapa
if (horizontal>0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+horizontal,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_side+horizontal,bbox_bottom) != 0)
{
	if (horizontal>0) x = x - (x mod 32) + 31 - (bbox_right - x);
	else x = x - (x mod 32) - (bbox_left - x);
	horizontal = 0;
}

x += horizontal*walkspeed + horizontal*boost_walk

//colisão vertical com o mapa
if (vertical>0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vertical) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vertical) != 0)
{
	if (vertical>0) y = y - (y mod 32) + 31 - (bbox_bottom - y);
	else y = y - (y mod 32) - (bbox_top - y);
	vertical = 0;
}
y += vertical*walkspeed + vertical*boost_walk

 if (horizontal>0){image_xscale = 1}
 if (horizontal<0){image_xscale = -1}
 
 #endregion

#region regeração de vida
	if hp < maxHp{
		hp += lvl*0.005
	}
#endregion