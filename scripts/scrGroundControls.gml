if (!keyLeft && !keyRight) 
{
    if (hspeed >= 1) { hspeed -= 1; }
    if (hspeed <= -1) { hspeed += 1; }
}

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

