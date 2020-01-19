/// @description Insert description here
// You can write your code in this editor


image_xscale = 3.0;
image_yscale = 3.0;

xSpeed = 4.6;

leftBound = x-128;
rightBound = x;

xDiff = x - global.playerX-64;
if (xDiff >= 0) {
	xDir = -1;
} else {
	xDir = 1;
}

image_xscale = abs(image_xscale)*xDir;

