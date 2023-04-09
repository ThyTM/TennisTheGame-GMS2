function GetAxisNumber(haxis, vaxis) {
	var h = sign(haxis);
	var v = sign(vaxis);
	
		if (h == 0 and v == 0)
		return 5;
else	if (h == 0 and v == -1)
		return 8;
else	if (h == 0 and v == 1)
		return 2;
else	if (h == -1 and v == 0)
		return 4;
else	if (h == 1 and v == 0)
		return 6;
		
	//diagonal inputs
else	if (h == 1 and v == -1)
		return 9;
else	if (h == -1 and v == -1)
		return 7;
else	if (h == 1 and v == 1)
		return 3;
else	if (h == -1 and v == 1)
		return 1;
}