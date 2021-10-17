/// @description Changes Weapons

change_up = mouse_wheel_up();
change_down = mouse_wheel_down();

//Swaps through Weapons when shift is pressed
if(cur_weapon < array_length(weapons) - 1 && change_up){
	cur_weapon += change_up;
	instance_destroy(obj_gun);
	instance_create_layer(obj_player.x, obj_player.y, "Guns", weapons[cur_weapon]);
}else if(change_up){
	cur_weapon = 0;
	instance_destroy(obj_gun);
	instance_create_layer(obj_player.x, obj_player.y, "Guns", weapons[cur_weapon]);
}

if(cur_weapon > 0 && change_down){
	cur_weapon -= change_down;
	instance_destroy(obj_gun);
	instance_create_layer(obj_player.x, obj_player.y, "Guns", weapons[cur_weapon]);
}else if(change_down){
	cur_weapon = array_length(weapons) - 1;
	instance_destroy(obj_gun);
	instance_create_layer(obj_player.x, obj_player.y, "Guns", weapons[cur_weapon]);
}
