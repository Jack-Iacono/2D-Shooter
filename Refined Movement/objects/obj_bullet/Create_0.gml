/// @description Sets angle of bullet

//Decides angle for bullet
xx = mouse_x - x;
yy = y - mouse_y;

w = xx;
h = yy;

image_angle = darctan2(h , w);

motion_add(image_angle,velocity);