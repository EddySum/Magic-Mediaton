/// @description Insert description here
// You can write your code in this editor

image_xscale = (abs(image_xscale))*xDir;

var newX = x + (xSpeed * xDir);
x = newX;

xSpeed += .3;