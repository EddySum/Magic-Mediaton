/// @description Insert description here
// You can write your code in this editor

if (!helpActive) {

draw_set_halign(fa_center);
draw_set_font(fnt_title);
draw_text(room_width/2, 32, "Magic Mediator");

draw_set_font(fnt_footer);
draw_text(room_width/2, (room_height/2)+300, "Press Enter to Begin");
draw_text(room_width/2, (room_height/2)+350, "Press H for help/controls");


draw_set_halign(fa_right);
draw_text(room_width - 100, room_height-100, "Presented by Sumra Productions");

}



if (helpActive) {
	draw_set_font(fnt_footer);
	draw_set_halign(fa_left);
	
	draw_text(0+100, (room_height/2)+250, "Movement: Directional Keys/Arrow");
	draw_text(0+100, (room_height/2)+300, "Fire Projectile: D");
	draw_text(0+100, (room_height/2)+350, "Ice Shield: S");
	draw_text(0+100, (room_height/2)+400, "Up + A: Ice to top platform");
	draw_text(0+100, (room_height/2)+450, "Down + A: Fire to Bottom platform");
	
	draw_text(room_width-800, (room_height/2)+250, "Objective: Collect keys and move to the portal");
	draw_text(room_width-800, (room_height/2)+300, "Keys: Captured from broken crate");
	draw_text(room_width-800, (room_height/2)+350, "Burning Crate: Break this with 3 fire shots");
	draw_text(room_width-800, (room_height/2)+400, "Arrow Crate: Break this by defecting the arrows it shoots (3hp)");
	draw_text(room_width-800, (room_height/2)+450, "Balance the meter by using ice and fire. Dont exceed the limit!");
	
	draw_sprite(spr_portal, 0, room_width-890, (room_height/2)+240);
	draw_sprite(spr_key, 0, room_width-875, (room_height/2)+330);
	draw_sprite(spr_crate, 0, room_width-875, (room_height/2)+375);
	draw_sprite(spr_crateTwo, 0, room_width-875, (room_height/2)+415);
	draw_sprite(spr_cool, 0, room_width-1150, (room_height/2)+440);
}