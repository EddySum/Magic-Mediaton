/// @description Insert description here
// You can write your code in this editor

draw_self();

if (drawImmune) {
	draw_set_halign(fa_center);
	draw_set_font(fnt_tip);
	draw_set_color(c_red)
	draw_text(x, y-50, "Immune");
}