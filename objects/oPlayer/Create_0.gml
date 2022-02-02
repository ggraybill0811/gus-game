//code that runs when oPlayer is created
// how many pixels per frame we want our player to move 
xSpeed = 4;

// what direction the player is facing (where 1 = right, -1 = left, 0 = not moving
xDirection = 0;

//how fast and what direction player is moving
xVector = xSpeed * xDirection;

yVector = 0;

//setting gravity
grv = 0.4;

jumpForce = -13;

//coins and points

global.coins = 0;

//invicibility
isInvincible = false;

//heath points 
hp = 6;