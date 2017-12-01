scrGravity();

if (keyLeft && canGoLeft) 
{
    if (hspeed > -mySpeed) { hspeed -= 1; }
    facing = LEFT;
    myAim = 180;
}
if (keyRight && canGoRight) 
{
    if (hspeed < mySpeed) { hspeed += 1; }
    facing = RIGHT;
    myAim = 0;
}

