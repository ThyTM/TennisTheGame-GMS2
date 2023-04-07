#region Enumerators
enum playerstates {
	normal,
	attacking
};
#endregion

#region Character
character			= characters.carinha;
state				= playerstates.normal;
hurtbox_mask		= noone;
#endregion
#region Constants
moveSpeed			= 2;
jumpSpeed			= 4;					
grav				= 0.3;
#endregion
#region Physics
hspd				= 0;
vspd				= 0;
#endregion
#region Checks
grounded			= false;
controlable			= true;
#endregion