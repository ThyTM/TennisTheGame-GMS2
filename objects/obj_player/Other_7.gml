if (state == playerstates.attacking) {
	move_end();
	state = playerstates.normal;
	
	if instance_exists(hurtbox_mask) {
		instance_destroy(hurtbox_mask);
	}
	
	controlable = true;
}