// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_follow_player_state(){
	var targetX = o_player.x + (o_player.image_xscale * 0);
	var targetY = o_player.y - 15;
	camera_move_to_target(targetx, targety, .13);
}