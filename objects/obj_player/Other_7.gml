/*function ResetState() {
	if (state != playerstates.attacking)
		return;

	move_end();
	state = playerstates.normal;
	
	if instance_exists(hurtbox_mask) {
		instance_destroy(hurtbox_mask);
	}
	
	controlable = true;
}

ResetState();