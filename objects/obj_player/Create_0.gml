enum playerstates {
	normal,
	attacking
};

state				= playerstates.normal;
hurtbox_mask		= noone;
					
moveSpeed			= 2;
jumpSpeed			= 4;
					
grav				= 0.3;
					
hspd				= 0;
vspd				= 0;
					
grounded			= false;
controlable			= true;