/// @description Insert description here
// You can write your code in this editor
var index = 1;
if (global.cool == -2) {
	index = 0;
} else if (global.cool == -1) {
	index = 1;
} else if (global.cool == 0) {
	index = 4;
} else if (global.cool == 1) {
	index = 2;
} else if (global.cool == 2) {
	index = 3;
}

draw_sprite(spr_cool, index, 200, 64);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(1000, 64, "Score: ");
draw_text(1100, 64, score);

draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(1920-85, 64, global.keyCounter);
draw_text(1920-48, 64, "  / 3");

draw_sprite(spr_key, 0, 1920-120, 80);