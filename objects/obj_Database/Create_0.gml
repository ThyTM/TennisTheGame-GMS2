#region Enumerators

#endregion
#region Constructors
function Character(_name, _id) constructor {
	name = _name;
	
	
	sprite_idle = spr_error;
	sprite_walk = spr_error;
	sprite_dash = spr_error;
	sprite_jump = spr_error;
	
	moveset = [
	
	];
	
	function SetSprites(spr_idle, _walk, _dash, _jump) {
		sprite_idle = spr_idle;
		sprite_walk = _walk;
		sprite_dash = _dash;
		sprite_jump = _jump;
	}
	function addMoveAction(move) {
		moveset[array_length(moveset)] = move;
	}
};
function MoveAction(_name, _inputDir) constructor {
	name		= _name;
	timeline	= 0;
	
	special		= false;
	airok		= false;
	
	inputdir	= _inputDir;
	
	function SetTimeline(_time) {
		timeline = _time;
	}
	function SetSpecial(_spc) {
		special = _spc;
	}
	function SetAirOK(_airok) {
		airok = _airok;
	}
}
#endregion
#region Initializers
function init_characters() {
	#region Example
	/*
	var char = new Character("Carinha");

	//Sprites
	char.SetSprites(spr_tai_idle,
					spr_tai_walk,
					spr_tai_dash,
					spr_tai_jump);

	//Moves
	var move = new MoveAction("Neutral", 5);
	move.SetTimeline(tl_move_taijab);
	move.SetSpecial(false);
	move.SetAirOK(false);
	char.addMoveAction(move);
	
	CHAR_Allocate(characters.carinha, char);
	*/
	#endregion
	
	//Index of all in-game characters
	enum characters {
		carinha
	};
	
	#region CHARACTERS.CARINHA
		var char = new Character("Carinha");

		//Sprites
		char.SetSprites(spr_tai_idle,
						spr_tai_idle,
						spr_tai_idle,
						spr_tai_idle);

		//Moves
		var move = new MoveAction("Neutral", 5);
		move.SetTimeline(tl_move_taijab);
		move.SetSpecial(false);
		move.SetAirOK(false);
		char.addMoveAction(move);
	
		CHAR_Allocate(characters.carinha, char);
	#endregion
}
#endregion