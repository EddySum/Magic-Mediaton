/// @description Insert description here
// You can write your code in this editor

if (idle && image_index == 8) {
	image_index = 1;
}


if (teleRef != noone ) {
	teleRef.image_xscale /=1.5;
	teleRef.image_yscale /=1.5;
}