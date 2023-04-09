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

function SpamDetect() {
	if (spam_prevent) {
		if !place_meeting(x, y, obj_player_hurtbox) {
			spam_prevent = false;
		}
	}
}

function Trail() {
	trail = instance_create_depth(x,y,0,obj_ball_trail);
	trail.image_blend = make_colour_hsv(130, 255, 255);
}

Gravity();
Collision();
SpamDetect();
Trail();