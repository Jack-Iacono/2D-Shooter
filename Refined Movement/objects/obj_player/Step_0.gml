/// @description Controls and Movement

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
jump = keyboard_check_pressed(ord("W"));

//Calculates whether to move or not (Need Hsp to avoid bouncing against wall)
move = right - left;
hsp = move * walk_speed;

//Gravity Control
vsp += grav;

//Slows down instead of stopping dead (checks for keyboard input and if you are already moving)
if(move = 0 && hspeed != 0){
	hspeed -= weight * sign(hspeed);	
}

//Stops jittering
if(sign(hspeed)*hspeed < 0.2){
	hspeed = 0;
}

//Horizontal Collision, Yes I started again ***Needs to be before Hsp to Hspeed Conversion
//These need to be seperate or else collision will fail due to hspeed decrease
if(place_meeting(x + hsp, y, obj_wall)){
		
	while(!place_meeting(x + sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}
if(place_meeting(x + hspeed, y, obj_wall)){
		
	while(!place_meeting(x + sign(hspeed), y, obj_wall)){
		x += sign(hspeed);
	}
	hspeed = 0;
}

//Vertical Collision ***Needs to be before vsp to vspeed Conversion
if(place_meeting(x, y + vsp, obj_wall)){
	
	while(!place_meeting(x, y + sign(vsp), obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}

//Jumping
if(place_meeting(x,y+1,obj_wall) && jump){
	vsp = jump_height * -1;	
}

//Convert hsp and vsp to vspeed and hspeed. Need second case to stop from stopping dead after recoil
if(!place_meeting(x, y + sign(vsp), obj_wall) && hspeed <= walk_speed && hspeed >= -walk_speed){
	hspeed += hsp * accel;
}else if(hspeed > walk_speed || hspeed < -walk_speed){
	hspeed -= sign(hspeed) * 0.75;
}else{
	hspeed = hsp;
}


vspeed = vsp;
	