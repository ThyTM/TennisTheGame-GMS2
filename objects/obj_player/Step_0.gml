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

function GrabInput() {
	haxis = -keyboard_check(vk_left) + keyboard_check(vk_right);
	vaxis = -keyboard_check(vk_up)	 + keyboard_check(vk_down);
}

function Movement() {
	if (!controlable)
		return;

	if (grounded)
		hspd = haxis * moveSpeed;
	
	if (vaxis < 0 and grounded) {
		vspd = -jumpSpeed;
	}
}

function UpdateCoord() {
	x += hspd;
	y += vspd;
}
#endregion
#region Character Handling
function Attacking() {
	if (!controlable)
		return;
		
	if (keyboard_check_pressed(ord("Z"))) {
		var char = CharacterGet();
		var input = GetAxisNumber(haxis, vaxis);
		
		movecurrent = 0;
		for (var i = 0; i < array_length(char.moveset); i++) {
			var c = char.moveset[@ i];
			
			if (c.inputdir == input) {
				movecurrent = i;
				break;
			}
		}
		AttackStart(char.moveset[@ movecurrent].timeline);
		
		if (grounded) {
			hspd = 0;
		}
	}
}

function Animation() {
	if (state != playerstates.normal)
		return;
		
	sprite_index = sprite_idle;
}
#endregion

/////////////
Gravity();
Collision();
GrabInput();
Movement();
UpdateCoord();
/////////////
Attacking();
Animation();