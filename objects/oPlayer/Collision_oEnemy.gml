
//check yto see if there ia a collision between oPlayer and tge top of oEnemy 
if (y <= other.y - other.sprite_height*0.9)

	{
		//bonce in the air a bit 
		yVector = jumpForce; 
		EnemyHurt();
	}
	else
	{
		x = x - xVector*10;
		PlayerHurt();
	}