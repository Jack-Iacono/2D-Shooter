/// @description Wall Collision

while(place_meeting(x + hspeed, y,obj_wall)){
		x -= sign(hspeed);
}
while(place_meeting(x, y + vspeed,obj_wall)){
		//y -= sign(vspeed);
}

if(place_meeting(x + sign(hspeed), y,obj_wall)){
	hspeed = 0;
}else if(place_meeting(x, y + sign(vspeed),obj_wall)){
	//vspeed = 0;
}