/// @description Insert description here
// You can write your code in this editor

//Popula lista Talocan
if(!(global.talocan2.capturado || global.talocan2.morto) && ds_list_find_index(global.listTalocan, global.talocan2) == -1)
	ds_list_insert(global.listTalocan, 0, global.talocan2);
else if(global.talocan2.capturado)
	ds_list_delete(global.listTalocan, ds_list_find_index(global.listTalocan,global.talocan2))
	
if(!(global.attuma.capturado || global.attuma.morto) && ds_list_find_index(global.listTalocan, global.attuma) == -1)
	ds_list_insert(global.listTalocan, 1, global.attuma);
else if(global.attuma.capturado)
	ds_list_delete(global.listTalocan, ds_list_find_index(global.listTalocan,global.attuma))

if(!(global.namor.capturado || global.namor.morto) && ds_list_find_index(global.listTalocan, global.namor) == -1)
	ds_list_insert(global.listTalocan, 2, global.namor);
else if(global.namor.capturado)
	ds_list_delete(global.listTalocan, ds_list_find_index(global.listTalocan, global.namor))
	
if(!(global.namora.capturado || global.namora.morto) && ds_list_find_index(global.listTalocan, global.namora) == -1)
	ds_list_insert(global.listTalocan, 3, global.namora);
else if(global.namora.capturado)
	ds_list_delete(global.listTalocan, ds_list_find_index(global.listTalocan,global.namora))

if(!(global.talocan1.capturado || global.talocan1.morto) && ds_list_find_index(global.listTalocan, global.talocan1) == -1)
	ds_list_insert(global.listTalocan, 4, global.talocan1);
else if(global.talocan1.capturado)
	ds_list_delete(global.listTalocan, ds_list_find_index(global.listTalocan,global.talocan1))

//Popula lista Wakanda
if(!(global.aneka.capturado || global.aneka.morto) && ds_list_find_index(global.listWakanda, global.aneka) == -1)
	ds_list_insert(global.listWakanda, 0, global.aneka);
else if(global.aneka.capturado)
	ds_list_delete(global.listWakanda, ds_list_find_index(global.listWakanda,global.aneka))

if(!(global.nakia.capturado || global.nakia.morto) && ds_list_find_index(global.listWakanda, global.nakia) == -1)
	ds_list_insert(global.listWakanda, 1, global.nakia);
else if(global.nakia.capturado)
	ds_list_delete(global.listWakanda, ds_list_find_index(global.listWakanda,global.nakia))

if(!(global.shuri.capturado || global.shuri.morto) && ds_list_find_index(global.listWakanda, global.shuri) == -1)
	ds_list_insert(global.listWakanda, 2, global.shuri);
else if(global.shuri.capturado)
	ds_list_delete(global.listWakanda, ds_list_find_index(global.listWakanda,global.shuri))

if(!(global.okoye.capturado || global.okoye.morto) && ds_list_find_index(global.listWakanda, global.okoye) == -1)
	ds_list_insert(global.listWakanda, 3, global.okoye);
else if(global.okoye.capturado)
	ds_list_delete(global.listWakanda, ds_list_find_index(global.listWakanda,global.okoye))

if(!(global.riri.capturado || global.riri.morto) && ds_list_find_index(global.listWakanda, global.riri) == -1)
	ds_list_insert(global.listWakanda, 4, global.riri);
else if(global.riri.capturado)
	ds_list_delete(global.listWakanda, ds_list_find_index(global.listWakanda,global.riri))



