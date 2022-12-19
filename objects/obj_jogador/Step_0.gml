#region movimentação

//andar com setinhas e wasd

var left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
var up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var down = (keyboard_check(vk_down) || keyboard_check(ord("S")));

var horizontal = (right - left)
var vertical   = (down - up)

x += horizontal*walkspeed
y += vertical*walkspeed

 if (horizontal>0){image_xscale = 1}
 if (horizontal<0){image_xscale = -1}
 
 #endregion

