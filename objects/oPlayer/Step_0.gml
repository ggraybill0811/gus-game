//code that runs every frame

//keyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//Horizontal movement 
xDirection = right - left;
xVector = xSpeed * xDirection;
yVector = yVector + grv;

//check to see if there is a wall, and if there is, stop movement, if there isn't continue movement
if (place_meeting(x + xVector, y , oWall))

	{
		//check one pixel to the right or left of us until we collide with a oWall
		// ! means "not"
		while(!place_meeting(x + xVector, y, oWall))
			{
			//only move 1 pixel at a time until you hit a oWall
			x = x + xDirection;
			}
			xVector = 0;
	}
//otherwise move normal
x = x + xVector;

//Vertical movement
if (place_meeting(x, y + yVector, oWall))

	{
		//check one pixel to the up or down of us until we collide with a oWall
		// ! means "not"
		//"sign" is going to return the positive or nagative sign for a value (-1, +1)
		//sign(yVector)if our yVector is positive it will return a positive 1, and if our yVector is nagative, it will return a -1
		while(!place_meeting(x, y + sign(yVector), oWall))
			{
			//only move 1 pixel at a time until you hit a oWall
			y = y + sign(yVector);
			}
			yVector = 0;
	}
//otherwise move normal
y = y + yVector;

//if we are touching oWall and we press the jump key, fly like an eagle
if (place_meeting(x, y + 1, oWall) and (jump))
{
	yVector = jumpForce; 
}

//die in a pit/restart
if (y >= room_height)

	{
		PlayerDeath()
	}
