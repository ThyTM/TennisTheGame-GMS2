function ATTACK_SpawnHitbox(_obj, _spritemask) {
	if (instance_exists(_obj.hurtbox_mask)) {
		with (_obj.hurtbox_mask)
			instance_destroy();
	}
	
	var obj = instance_create_depth(_obj.x, _obj.y, _obj.depth, obj_player_hurtbox);
	
	obj.owner = _obj;
	
	obj.sprite_index = _spritemask;
	
	_obj.hurtbox_mask = obj;
	
	return obj;
}
function ATTACK_HitboxPower(_hitbox, _strength, _heightpower, _effect) {
	with _hitbox {
		strength = _strength;
		heightpower = _heightpower;
		effect = _effect;
	}
}
function ATTACK_KillHitbox(_obj) {
	if (!instance_exists(_obj.hurtbox_mask)) {
		return;
	}
	
	instance_destroy(_obj.hurtbox_mask);
}