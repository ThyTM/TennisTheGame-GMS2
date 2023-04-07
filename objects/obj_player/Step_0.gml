
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
	
	axisX = -keyboard_check(vk_left) + keyboard_check(vk_right);
	axisY = -keyboard_check(vk_up)   + keyboard_check(vk_down);

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
}

function UpdateCoord() {
	x += hspd;
	y += vspd;
}

function MoveCheck() {
	
}

/////////////
Gravity();
Collision();
Movement();
Animation();
PerformingMoves();
UpdateCoord();