var tileOffsetX = sprite_get_xoffset(spr_tiles);
var tileOffsetY = sprite_get_yoffset(spr_tiles);
var sprWidth = sprite_get_width(spr_tiles);

for (var i = 0; i < room_width-tileOffsetX ; i += sprWidth) {
	instance_create_layer(i+tileOffsetX,768-tileOffsetY, "Instances", obj_iceTile);
}

audio_stop_all();
audio_play_sound(snd_battle, 5, true);
