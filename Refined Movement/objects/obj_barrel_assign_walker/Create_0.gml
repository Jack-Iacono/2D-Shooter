/// @description Assigns each barrel to partner turret

for(i = 0; i < instance_number(obj_turret_walker); i += 1){
	turrets[0,i] = instance_find(obj_turret_walker,i);
	instance_create_layer(x,y,"Entities",obj_turret_walker_barrel);
}
for(i = 0; i < instance_number(obj_turret_walker_barrel); i += 1){
	turrets[1,i] = instance_find(obj_turret_walker_barrel,i);
}
for(i = 0; i < instance_number(obj_turret_walker_barrel); i += 1){
	turrets[1,i].target_instance = turrets[0,i];
}
for(i = 0; i < instance_number(obj_turret_walker); i += 1){
	turrets[0,i].target_instance = turrets[1,i];
}