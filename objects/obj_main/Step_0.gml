/// @description Insert description here
// You can write your code in this editor

var enter = keyboard_check(vk_enter);
var help = keyboard_check_released(ord("H"));

if (enter) {
	room_goto_next();
	audio_stop_sound(snd_menu);
} else if (help) {
	helpActive = !helpActive;
}
