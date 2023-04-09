function CHAR_Allocate(_id, _char) {
	with (obj_Database) {
		character[_id] = _char;
		show_debug_message("Character #" + string(_id+1) + ": " + _char.name + " added to the database.");
	}
}
function CHAR_GetCharacter(_enumid) {
	return obj_Database.character[@ _enumid];
}
function CHAR_GetMove(_id, _moveID) {
	return obj_Database.character[@ _enumid].moveset[@ _moveID];
}