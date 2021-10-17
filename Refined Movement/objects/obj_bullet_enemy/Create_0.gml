/// @description Sets angle of bullet

//Decides angle for bullet
xx = obj_player.x - x;
yy = y - obj_player.y;

w = xx;
h = yy;

image_angle = darctan2(h , w);

motion_add(image_angle,velocity);