/// @description Displays Damage of Bullet and Total Damage

cur_damage = obj_gun.damage;
total_damage += cur_damage;

instance_create_layer(x,y-30,"Popups",obj_gun_damage_pop);