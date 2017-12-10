action = IDLE;
if (facing == LEFT) { myAim = 180; }
if (facing == RIGHT) { myAim = 0; }

if (keyLeft && canGoLeft)
{
    hspeed = -mySpeed;
    facing = LEFT;
    action = RUN;
    myAim = 180;
}

if (keyRight && canGoRight)
{
    hspeed = mySpeed;
    facing = RIGHT;
    action = RUN;
    myAim = 0;
}

if (keyJump && isOnGround)
{
    vspeed = -MAXGRAVITY;
    action = INAIR;
}

if (keyPunch && canPunch) {
    action = PUNCH;
}

if (keyKick && canKick) {
    action = KICK;
}

if (keyBlock) {
    action = BLOCK;
}

