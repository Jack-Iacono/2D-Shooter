/// @description destroys if health is lower than 0

if(turret_health <= 0){
	with(target_instance){
		instance_destroy();
	}
	instance_destroy();
}


