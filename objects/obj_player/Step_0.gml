#region Physics and Movement
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

	if (grounded)
		hspd = axisX * moveSpeed;
	
	if (keyboard_check(vk_up) and grounded) {
		vspd = -jumpSpeed;
	}
}

function UpdateCoord() {
	x += hspd;
	y += vspd;
}
#endregion
#region Character Handling
	
#endregion

/////////////
Gravity();
Collision();
Movement();
UpdateCoord();
/////////////