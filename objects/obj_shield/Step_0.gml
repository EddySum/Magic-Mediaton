/// @description Insert description here
// You can write your code in this editor


image_xscale = (abs(image_xscale))*xDir;
image_yscale = (abs(image_yscale))*xDir;

if (image_index == 8 && alarm[0] == -1) { 
	image_speed = 0;
	alarm[0] = room_speed * 0.4;
}

if (image_index > image_number - 1) { 
	instance_destroy();
}
