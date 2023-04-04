#region INPUT
enum inputbuttons {
	none,
	
	start,
	select,
	
	up,
	down,
	left,
	right,
	
	a,
	b,
	c
}
function InputButton(_name, _keyboardDefault, _gamepadDefault) constructor {
	name = _name;
	keyboard_default = _keyboardDefault;
	gamepad_default = _gamepadDefault;
}

inputbutton[inputbuttons.none]		= -1;
inputbutton[inputbuttons.start]		= new InputButton("Start",	vk_enter,		gp_start);
inputbutton[inputbuttons.select]	= new InputButton("Select", vk_backspace,	gp_select);
inputbutton[inputbuttons.a]			= new InputButton("A",	    ord("Z"),		gp_face1);
inputbutton[inputbuttons.b]			= new InputButton("B",	    ord("X"),		gp_face2);
inputbutton[inputbuttons.c]			= new InputButton("C",	    ord("C"),		gp_face3);
inputbutton[inputbuttons.up]		= new InputButton("Up",	    vk_up,			gp_padu);
inputbutton[inputbuttons.down]		= new InputButton("Down",	vk_down,		gp_padd);
inputbutton[inputbuttons.left]		= new InputButton("Left",	vk_left,		gp_padl);
inputbutton[inputbuttons.right]		= new InputButton("Right",	vk_right,		gp_padr);
inputbutton_amount = 10;

enum inputstates {
	none,
	pressed,
	held,
	released
}
#endregion
#region PLAYER
enum playerstates {
	normal,
	attacking
}
#endregion
#region BALL
	enum balleffects {
		none
	}
#endregion
#region MOVESET
function Move(_name, _timeline, _sprite, _mask, _strength, _effect, _heightpower, _frameadv) constructor
{
	name		= _name;
	timeline	= _timeline;
	sprite		= _sprite;
	mask		= _mask;
	
	strength	= _strength;
	effect		= _effect;
	heightpower = _heightpower;
	
	frame_adv	= _frameadv;
}

enum playermoves {
	none,
	
	carinha_jab1
}

movelist[playermoves.none]
	= -1;
movelist[playermoves.carinha_jab1]
	= new Move("Attack", -1, spr_tai_attack, spr_tai_m_attack,
				3, balleffects.none, 4, 2);
#endregion