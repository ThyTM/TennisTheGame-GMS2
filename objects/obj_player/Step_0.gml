
function Gravity() {
	if (!grounded)
		vspd += grav;
};

function Collision() {
	if place_meeting(x, y+vspd, obj_block) {
		while (!place_meeting(x, y+sign(vspd), obj_block)) {
			y += sign(vspd);
		}
		vspd = 0;
	}

	grounded = place_meeting(x,y+1, obj_block);
}

function Movement() {
	if (!controlable)
		return;
	
	var axisX = -keyboard_check(vk_left) + keyboard_check(vk_right);

	if (grounded)
		hspd = axisX * moveSpeed;
	
	if (keyboard_check(vk_up) and grounded) {
		vspd = -jumpSpeed;
	}
}

function Animation() {
	if (state == playerstates.normal) {
		sprite_index = spr_tai_idle;
	}
}

function PerformingMoves() {
	if (!controlable)
		return;
	
	if keyboard_check_pressed(ord("Z")) {
		if (state == playerstates.normal)
			state = playerstates.attacking;
			move_current = move_execute(playermoves.carinha_jab1);
			hurtbox_mask = hurtbox_create(self, move_current.mask, 
							move_current.strength, move_current.effect, 
							move_current.heightpower);	
			
			controlable = false;
			if (grounded)
				hspd = 0;
	}
}

function UpdateCoord() {
	x += hspd;
	y += vspd;
}

/////////////
Gravity();
Collision();
Movement();
Animation();
PerformingMoves();
UpdateCoord();