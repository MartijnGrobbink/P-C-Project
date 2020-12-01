/// @description Insert description here
// You can write your code in this editor

draw_set_font(f_arial);
draw_set_colour(c_black);

if (message_end > 0) {
	//setting variables
	var charWidth = 29;
	var lineEnd = 35;
	var line = 0;
	var space = 0;
	var i = 1;
	var delay = 3;
	var wavy_text = global.wavy_text;
	
	//wavy text go brrrrrr
	global.wavy_text -= .1;
	
	//position for text DEPRECATED GM1 CoDE
	//tY = view_hview[current_view] - 600;
	//tX = view_wview[current_view];
	tX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) * .25); 
	tY = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) * 1.7);
	
	
	//Typewriter
	if (cutoff < string_length(message[message_current])) {
		if (timer >= delay) {
			cutoff++;
			timer = 0;
		} else {
			timer++;
		}
	}
	
	if (keyboard_check_pressed(vk_space)) {
		// if messages remain, go to next msg
		if (cutoff < lineEnd) {
			cutoff = lineEnd;
		} else if (message_current < message_end - 1) {
			message_current++;
			cutoff = 0;
			// or end if its done
		} else {
			done = true;
			instance_destroy();
		}
	}
	
	// Draw text
	while (i <= string_length(message[message_current]) && i <= cutoff) {
		//go to next line
			draw_text_transformed( tX +(space * charWidth), tY + (13 * line), string_char_at(message[message_current], i), 4, 4, 0);
		var length = 0;
		while (string_char_at(message[message_current], i) != " " && i <= string_length(message[message_current])) {
			i++;
			length++;
		}
		if (space + length > lineEnd) {
			space = 0;
			line++;
		}
		i -= length;
		
		space++;
		i++;
	}
	
	
	
}