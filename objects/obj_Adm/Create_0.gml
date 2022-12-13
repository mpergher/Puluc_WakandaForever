/// @description Insert description here
// You can write your code in this editor

audio_play_sound(Titulo, 5, true)
randomise();
global.jogoAcontecendo = false;
global.jogadorUm = false;
global.escolhendo = false;
global.movendo = false;
global.gameOver = false;

global.nMovimentos = 0;

global.move = instance_find(obj_Move, 0);
global.moveIcone = instance_find(obj_MoveIcones, 0);

global.movendoAgora = undefined;

global.namor = instance_find(Namor, 0);
global.namora = instance_find(Namora, 0);
global.attuma = instance_find(Attuma, 0);
global.talocan1 = instance_find(Talocano, 0);
global.talocan2 = instance_find(Talocana, 0);

//teste com lista
global.listTalocan = ds_list_create();
global.listWakanda = ds_list_create();
global.listCapturadosT = ds_list_create();
global.listCapturadosW = ds_list_create();
global.listMorreuT = ds_list_create();
global.listMorreuW = ds_list_create();

global.shuri = instance_find(Shuri, 0);
global.okoye = instance_find(Okoye, 0);
global.nakia = instance_find(Nakia, 0);
global.riri = instance_find(Riri, 0);
global.aneka = instance_find(Aneka, 0);