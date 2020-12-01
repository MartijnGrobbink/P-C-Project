/// @description Insert description here
// You can write your code in this editor

view_camera[0] = camera_create();
var viewmat = matrix_build_lookat(512, 288, -10, 512, 288, 0, 0, 1, 0);
var projmat = matrix_build_projection_ortho(512, 288, 1.0, 32000.0);
camera_set_view_mat(view_camera[0], viewmat);
camera_set_proj_mat(view_camera[0], projmat);


camera_move_to_target(o_player.x, o_player.y, 1);

state = camera_follow_player_state;