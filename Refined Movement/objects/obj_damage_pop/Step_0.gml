/// @description sets alpha and destroys

image_alpha -= 0.06;

vsp += 0.25;

y += vsp;

motion_add(ang, 0.5);

if(image_alpha <= 0){
	instance_destroy();
}
