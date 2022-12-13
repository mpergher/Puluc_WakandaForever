/// @description Insert description here
// You can write your code in this editor

global.nMovimentos = irandom_range(1,5);

if(global.jogadorUm)
	global.movendoAgora = instance_place(x, y, T_Parent);
else
	global.movendoAgora = instance_place(x, y, W_Parent);

