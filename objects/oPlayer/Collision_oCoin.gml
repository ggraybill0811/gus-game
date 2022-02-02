//when I collide with a oCoin, destroy coin and boost pointsand coin count
instance_destroy(other);
global.coins +=1;
global.points +=100;