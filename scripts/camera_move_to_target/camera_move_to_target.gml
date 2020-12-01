// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_move_to_target(){
	var xx = argument[0];
	var yy = argument[1];
	var spd = argument[2];
	x += (xx - x) * spd;
	y += (yy - y) * spd;
}