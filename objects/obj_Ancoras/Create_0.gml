/// @description Insert description here
// You can write your code in this editor

var areaIT, areaIW;

areaIT = instance_find(obj_AreaInicialT, 0)
areaIW = instance_find(obj_AreaInicialW, 0)

if(x < areaIT.x)
	instance_destroy(self);
if(x > areaIW.x)
	instance_destroy(self);