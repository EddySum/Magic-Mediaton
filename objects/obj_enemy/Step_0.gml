/// @description Insert description here
// You can write your code in this editor

if (abs(global.playerX - x) < 500) {
	leftBound = 0;
}

if (!position_meeting(x+(xSpeed*xDir), y+48, obj_iceTile )) {
	xDir*=-1;
	image_xscale = abs(image_xscale)*xDir;
}

if (x < leftBound) {
	x = leftBound;
	xDir = 1;
	image_xscale = abs(image_xscale)*xDir;
} else if (x > rightBound) {
	x = rightBound;
	xDir = -1;
	image_xscale = abs(image_xscale)*xDir;
}



var newX = x + (xSpeed * xDir);
x = newX;
	
