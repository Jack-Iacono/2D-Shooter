/// @description Decriment Health

target_instance.turret_health -= obj_gun.damage;
instance_create_layer(x + (sprite_width / 2),y - 20, "Popups",obj_gun_damage_pop);
