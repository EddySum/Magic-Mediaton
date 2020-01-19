/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_halign(fa_center);
draw_set_font(fnt_tip);

draw_set_color(c_white);

if (storyActivate == 1) {
	draw_text(x, y-70, "Woah, this place looks familar");
} else if (storyActivate == 2) {
	draw_text(x, y-70, "Those guys remind me of dad");
} else if (storyActivate == 3) {
	draw_text(x, y-70, "Finally, I can avenge him...");
} else if (storyActivate == 4) {
	draw_text(x, y-70, "I should burn that ghost up there");
}




