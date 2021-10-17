/// @description Controls For Gun

//Gets input for semi auto adn full auto firing
shoot = mouse_check_button_pressed(mb_left);

//Controls for gun pointing
xx = mouse_x - x;
yy = y - mouse_y;

w = xx;
h = yy;

image_angle = darctan2(h , w);

//Controls for shooting
if(shoot && ready){
	instance_create_layer(x,y,"Guns",bullet_type);
	audio_play_sound(snd_menu_cursor, 0 ,0);
	ready = false;
	alarm[0] = fire_rate;
	xtarg = lengthdir_x(obj_gun.recoil,(180 + obj_gun.image_angle)); //Gives the x-value of the target position
	ytarg = lengthdir_y(obj_gun.recoil,(180 + obj_gun.image_angle)); //Gives the y-value of the target position
	
	with(obj_player){
		if(place_empty(x + obj_gun.xtarg, y + obj_gun.ytarg, obj_wall)){
		    motion_add((180 + obj_gun.image_angle),obj_gun.recoil);
			
			//Allow for "dynamic" recoil
			vsp = obj_gun.recoil * dsin(obj_gun.image_angle);
			hsp = obj_gun.recoil * -dcos(obj_gun.image_angle);
			
		} else { // If the next position is not free!
		    //do nothing
		}
	}
}