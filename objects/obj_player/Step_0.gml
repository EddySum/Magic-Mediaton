/// @description Insert description here
// You can write your code in this editor

if (x > 300 && x < 450  && storyActivate < 1) {
	storyActivate = 1;
} else if (x > 600 && x < 675 && storyActivate < 2) {
	storyActivate = 2;
} else if (x > 750 && x < 825 && storyActivate < 3) {
	storyActivate = 3;
} else if (x > 975 && x < 1050 && !ghostDead ) {
	storyActivate = 4;
} else {
	storyActivate = 0;
}


if (global.cool > 2 || global.cool < -2) {
	death = true;
}
 
if (death) {
	if (image_index >= image_number -1) {
		image_index = image_number -1;
		image_speed = 0;
		room_goto(3);
		//instance_destroy();
	}
} else {
	var right = keyboard_check(vk_right);
	var left = keyboard_check(vk_left);
	var jump = keyboard_check(vk_space);
	var jumpLauch = keyboard_check_released(vk_space);
	var up = keyboard_check(vk_up);
	var down = keyboard_check(vk_down);
	var tele = keyboard_check(ord("A"));
	var shield = keyboard_check_released(ord("S"));
	var fireball = keyboard_check_released(ord("D"));

	yAccel = grav + jumpAccel;

	if (right) {
		xDir = 1;
		image_xscale = abs(image_xscale);
	} else if (left) {
		xDir = -1;
		image_xscale = abs(image_xscale)*-1;
	}


	
	if (!right && !left) {
		image_speed = 0;
		sprite_index = scr_getElementSprite(ice, "idle");
	} else {
		sprite_index = scr_getElementSprite(ice, "run");
		image_speed = 0.7;
		var newX = x + (xSpeed * xDir);
	
		if (newX > 0-sprite_xoffset && newX < room_width-sprite_xoffset) {
			x = newX;
		} 
	}

	ySpeed += yAccel;
	var newY = y + ySpeed;
	if (!position_meeting(x, newY+sprite_yoffset, obj_iceTile)) {
		y = newY;
	} else {
		ySpeed = 0;
	}

	// Jump
	if (jump && ySpeed == 0) {
		sprite_index = scr_getElementSprite(ice, "jump");
	} else if (jumpLauch && ySpeed == 0) {
		jumpAccel = -10.8;
	}

	// Jump Reducer
	if (jumpAccel < 0) {
		jumpAccel += 4.8;
		if (jumpAccel > 0) {
			jumpAccel = 0;
		}
	} 

	if (up && tele) {
		var teleportTile = collision_line(x, y-32, x, 0, obj_iceTile, false, false);
		if (teleportTile) {
			ghostDead = true;
			global.cool++;
			ice = true;
			visible = false;
			var crystal = instance_create_layer(x, y, "Instances", obj_iceCrystal);
			crystal.player = self;
			y = (teleportTile.y)-sprite_yoffset-20; 
		}
	} else if (down && tele) {
		
		ice = false;
		var teleportTile = collision_line(x, y+400, x, room_height, obj_iceTile, false, false);
		if (teleportTile && abs(y-teleportTile.y) > 100) {
			global.cool--;
			y = (teleportTile.y)-sprite_yoffset-20;
		}
	}

	// shield
	if (shield) {
		ice = true;
		var shield = instance_create_layer(x+(75*xDir), y, "Instances", obj_shield);
		shield.xDir = xDir;
	}

	//fireball 

	if (fireball && fireBallActive) {
		cast = true;
		ice = false;
		var fireball = instance_create_layer(x+(50*xDir), y, "Instances", obj_fireball);
		fireball.xDir = xDir;
		fireBallActive = false;
		alarm[0] = room_speed/3;
	}
	


 }
 
global.playerX = x;