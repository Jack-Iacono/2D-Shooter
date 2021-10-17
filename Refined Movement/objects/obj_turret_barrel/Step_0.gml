/// @description sets position and points toward player

//Sets checker to true
check = true;

//Sets position to the turret based on barrel assign
x = target_instance.x;
y = target_instance.y;

//Controls angle of the barrel

xx = obj_player.x - x;
yy = y - obj_player.y;

w = xx;
h = yy;
dist = sqrt((xx * xx) + (yy * yy));


//Draws a line toward the player to determine if they can be seen
for(var i = 1; i < 100; i++){ 
	xtarg = lengthdir_x((dist/100) * i,darctan2(h , w)); //Gives the x-value of the target position
	ytarg = lengthdir_y((dist/100) * i,darctan2(h , w)); //Gives the y-value of the target position
	
	if(!place_empty(x + xtarg, y + ytarg, obj_wall)){
		check = false
	}
}

//Sets angle to face player
if(check){
	//Sets the angle of the turret
	image_angle = darctan2(h , w);
	
	if(ready){
		instance_create_layer(x,y,"Guns",bullet_type);
		audio_play_sound(snd_menu_cursor, 0 ,0);
		alarm[0] = fire_rate;
		ready = false;
	}
}