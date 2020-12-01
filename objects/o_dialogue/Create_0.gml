/// @description Insert description here
// You can write your code in this editor
message[0] = "this was overwritten";
message[1] = "this as well";

message_end = 0;

with (instance_nearest(o_player.x, o_player.y, InteractParent)) {
	o_dialogue.message_end = array_length_1d(text);
		
	for (i = 0; i < o_dialogue.message_end; i++) {
		o_dialogue.message[i] = text[i];
	}
}

message_current = 0;
timer = 0;
cutoff = 0;
portrait = "";

global.wavy_text = 0;

t = 0;
increment = 0;

done = false;