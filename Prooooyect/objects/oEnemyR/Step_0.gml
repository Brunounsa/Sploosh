if(done == 0)
{
//calculate movemente
	vsp += grv;


//horizontal collision
	if (place_meeting(x+hsp, y, oWall))
	{
		while(!place_meeting(x+sign(hsp), y, oWall))
		{
		x += sign(hsp);
		}
		hsp = 0;
	}

	x += hsp;


//vertical collision
	if (place_meeting(x, y+vsp, oWall))
	{
		if(vsp>0)
		{
			done=1;
			image_index = 1;
		}
		while(!place_meeting(x, y+sign(vsp), oWall))
		{
		y += sign(vsp);
		}
		vsp = 0;
	}

	y += vsp;


}