targetDist = distance_to_object(objPlayer);

if (targetDist > 0) 
{
    if (isOnGround)
    {
        action = IDLE;
        if (facing == LEFT) { myAim = 180; }
        if (facing == RIGHT) { myAim = 0; }
        
        if (objPlayer.x < x && canGoLeft)
        {
            hspeed = -mySpeed;
            facing = LEFT;
            action = RUN;
            myAim = 180;
        }
        
        if (objPlayer.x > x && canGoRight)
        {
            hspeed = mySpeed;
            facing = RIGHT;
            action = RUN;
            myAim = 0;
        }
        
        if (objPlayer.y < y-200)
        {
            vspeed = -MAXGRAVITY;
            action = INAIR;
        }
    } else {
        scrGravity();
        if (objPlayer.x < x && canGoLeft) 
        {
            if (hspeed > -mySpeed) { hspeed -= 1; }
            facing = LEFT;
            myAim = 180;
        }
        if (objPlayer.x > x && canGoRight) 
        {
            if (hspeed < mySpeed) { hspeed += 1; }
            facing = RIGHT;
            myAim = 0;
        }
    }
}
else if (targetDist < 5 && canKick) {
    action = KICK;
}
else if (targetDist < 5 && canPunch) {
    action = PUNCH;
}

if (false) {
    action = BLOCK;
}



