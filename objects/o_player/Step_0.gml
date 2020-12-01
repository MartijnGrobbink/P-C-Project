/// @description Insert description here
// You can write your code in this editor



//dir = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);



if ((mouse_check_button_pressed(mb_left)) == true && 5 < point_distance(o_player.x, o_player.y, mouse_x, mouse_y)) {
	
	vec_x = mouse_x - o_player.x;
	vec_y = mouse_y - o_player.y;
	
	vec_length = sqrt(sqr(vec_x) + sqr(vec_y));
	
	x_spd = maxspd * (vec_x / vec_length);
	y_spd = maxspd * (vec_y / vec_length);
	
	walk_timer = abs(vec_x) / abs(x_spd);
	
	moving = true;
	alarm[0] = walk_timer;
	
	o_player.image_xscale = sign(x_spd);
	
}
if (moving == true) {
	o_player.x += x_spd;
	o_player.y += y_spd;
}

if (keyboard_check_pressed(vk_space) && distance_to_object(InteractParent) < 100 && !instance_exists(o_dialogue)) {
	instance_create_depth(o_player.x, o_player.y, 999, o_dialogue);
}