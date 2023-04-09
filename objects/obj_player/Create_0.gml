#region Enumerators
enum playerstates {
	normal,
	attacking
};
#endregion

#region Character
characterID			= characters.carinha;
state				= playerstates.normal;
movecurrent			= 0;
hurtbox_mask		= noone;
	#region Sprite Definitions
	sprite_idle		= spr_error;
	sprite_walk		= spr_error;
	sprite_dash		= spr_error;
	sprite_jump		= spr_error;
	#endregion
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
#region Miscallenous
grounded			= false;
controlable			= true;
haxis				= 0;
vaxis				= 0;
#endregion
#region Functions
function CharacterUpdate() {
	var char = CHAR_GetCharacter(characterID);
	
	sprite_idle = char.sprite_idle;
	sprite_walk = char.sprite_walk;
	sprite_dash = char.sprite_dash;
	sprite_jump = char.sprite_jump;
}
function CharacterGet() {
	return CHAR_GetCharacter(characterID);
}
function AttackStart(_timeline) {
	timeline_position = 0;
	timeline_running = true;
	timeline_index = _timeline;
	
	state = playerstates.attacking;
	controlable = false;
}
function AttackEnd() {
	timeline_position = 0;
	timeline_running = false;
	
	ATTACK_KillHitbox(self);
	state = playerstates.normal;
	controlable = true;
}
#endregion

CharacterUpdate();