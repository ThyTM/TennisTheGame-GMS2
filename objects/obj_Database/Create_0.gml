function Character(_name, _sprites, _moveset) constructor {
	name = _name;
	
	sprites = [
	
	];
	
	moveset = [
	
	];
	
	function addSprite(spr) {
		sprites[array_length(sprites)] = spr;
	}
	function addMoveAction(move) {
		moveset[array_length(moveset)] = move;
	}
};
function MoveAction(_name) constructor {
	name		= _name;
	timeline	= 0;
	
	special		= false;
	airok		= false;
	
	haxis		= 0;
	vaxis		= 0;
	
	function SetTimeline(_time) {
		timeline = _time;
	}
	function SetSpecial(_spc) {
		special = _spc;
	}
	function SetAirOK(_airok) {
		airok = _airok;
	}
	function SetAxis(_h, _v) {
		haxis = sign(_h);
		vaxis = sign(_v);
	}
	function Perform() {
		timeline_position = 0;
		timeline_running = true;
		timeline_index = timeline;
	}
	function End() {
		timeline_position = 0;
		timeline_running = false;
	}
}

enum characters {
	carinha
};

function init_characters() {
	#region CHARACTERS.CARINHA
	var char = new Character("Carinha");

	//Sprites
	char.addSprite(spr_tai_idle);

	//Moves
	var move = new MoveAction("Neutral");
	move.SetTimeline(tl_move_taijab);
	move.SetSpecial(false);
	move.SetAirOK(false);
	move.SetAxis(0, 0);
	char.addMoveAction(move);
	
	character[characters.carinha] = char;
	#endregion
}