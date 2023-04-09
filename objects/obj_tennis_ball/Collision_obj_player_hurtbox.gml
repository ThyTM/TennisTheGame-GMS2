/*
======================
PRECISA SER REFATORADO
======================
*/
/*
var side = sign(other.image_xscale);
while (place_meeting(x,y,other)) {
	x += side;
}
*/
if (spam_prevent)
	exit;
	
instance_create_depth(x, y, -10, obj_effect_testhit);

spam_prevent = true;
hspd = other.strength * sign(other.image_xscale);
vspd = -other.heightpower;