/// @description destroys if health is lower than 0

if(place_empty(x + (walk_speed * dir) + (sprite_width / 2 * dir), y + 5, obj_wall)){
	dir = dir * -1;
}

hsp = walk_speed * dir;

x += hsp;

if(turret_health <= 0){
	with(target_instance){
		instance_destroy();
	}
	instance_destroy();
}


