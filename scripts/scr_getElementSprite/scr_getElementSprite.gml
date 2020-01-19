var ice = argument0; 
var state = argument1;

if (ice) {
	if (state == "run") {
		return spr_playerRun;
	} else if (state == "jump") {
		return spr_jump;
	} else if (state == "idle") {
		return spr_playerIdle;
	} else if (state == "death") {
		return spr_playerDeath;
	}
} else {
	if (state == "run") {
		return spr_playerRun_fire;
	} else if (state == "jump") {
		return spr_jump_fire;
	} else if (state == "idle") {
		return spr_playerIdle_fire;
	} else if (state == "cast") {
		return spr_cast_fire;
	}
}
