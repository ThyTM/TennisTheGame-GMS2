var side = sign(other.image_xscale);
while (place_meeting(x,y,other)) {
	x += side;
}
hspd = other.strength * sign(other.image_xscale);
vspd = -other.heightpower;