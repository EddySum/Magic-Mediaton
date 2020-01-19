/// @description Insert description here
// You can write your code in this editor


draw_set_font(fnt_info);




draw_set_halign(fa_center);
draw_set_color(c_white);

if (x<200) {
	draw_text(400, 400, "Use Directional keys to move and Space to jump! ");
} else if (x > 475 && x < 525) {
	draw_text(400, 400, "Press D to shoot fire!");
} else if (x > 625 && x < 750) {
	draw_text(400, 400, "Dont let the meter above overheat!");
} else if (x > 1075 && x < 1200 && !ghostDead ) {
	draw_text(400, 400, "Press Up + A to freeze time upwards");
} else if (x > 1050 && x < 1200 && global.ghostTip == 1 && global.ghostTipTwo != 1) {
	draw_text(400, 400, "Try pressing S to shield reflect the projectile");
} else if (x > 1050 && x < 1200 && global.ghostTipTwo == 1) {
	draw_text(600, 400, "Falling from that height is death. Use Down + A to burn time downward");
}