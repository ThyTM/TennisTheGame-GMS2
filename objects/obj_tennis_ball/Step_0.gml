function Gravity() {
	vspd += grav;
};

function Collision() {
	if place_meeting(x+hspd, y, obj_block) {
		while (!place_meeting(x+sign(hspd), y, obj_block)) {
			x += sign(hspd);
		}
		HBounce();
	}
	x += hspd;
	
	if place_meeting(x, y+vspd, obj_block) {
		while (!place_meeting(x, y+sign(vspd), obj_block)) {
			y += sign(vspd);
		}
		VBounce();
	}
	y += vspd;
}

function HBounce() {
	hspd *= -0.8;
}

function VBounce() {
	vspd *= -0.9;
}

Gravity();
Collision();