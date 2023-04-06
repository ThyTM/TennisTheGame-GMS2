
if image_xscale > 0.1
{
	image_alpha -= 0.02;
	image_xscale -= 0.05;
	image_yscale -= 0.05;
}
else
{
	instance_destroy();
}