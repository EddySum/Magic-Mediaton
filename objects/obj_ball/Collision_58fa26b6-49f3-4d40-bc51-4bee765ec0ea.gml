/// @description Insert description here
// You can write your code in this editor

if (other.image_index >= 5) {
	score+=10;
	xDir = xDir*-1;
	x += xSpeed * xDir;
	global.cool++;
	instance_destroy(other);
}

