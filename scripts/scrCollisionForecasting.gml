if (place_free(x - mySpeed, y))
{
    canGoLeft = true;
} else {
    canGoLeft = false;
    hspeed = 0;
}

if (place_free(x + mySpeed, y))
{
    canGoRight = true;
} else {
    canGoRight = false;
    hspeed = 0;
}

if (!place_free(x, y+1))
{
    isOnGround = true;
    vspeed = 0;
    action = IDLE;
} else {
    isOnGround = false;
}

if (!place_free(x, y)) 
{ 
    x = xprevious;
    y = yprevious;
    move_contact_solid(direction, MAXGRAVITY);
    vspeed = 0;
}

