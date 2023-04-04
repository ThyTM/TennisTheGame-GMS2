if !instance_exists(owner) {
	instance_destroy();
	exit;
}

x = owner.x;
y = owner.y;
image_xscale = owner.image_xscale;
image_yscale = owner.image_yscale;
image_index	 = owner.image_index;