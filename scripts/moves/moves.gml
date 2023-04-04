function move_execute(_moveID) {
	var move = obj_Database.movelist[_moveID];
	
	sprite_index = move.sprite;
	image_index = 0;
	
	if (move.timeline != -1) {
		timeline_index = move.timeline;
		timeline_position = 0;
		timeline_running = true;
	}
	
	return move;
}
function move_end() {
	timeline_running = false;
}

function hurtbox_create(owner, sprite, strength, effect, heightpower) {
	var h = instance_create_layer(owner.x, owner.y, owner.layer, obj_player_hurtbox);
	h.owner = owner;
	h.sprite_index = sprite;
	h.strength = strength;
	h.effect = effect;
	h.heightpower = heightpower;
	return h;
}