if (place_free( x, y + vspeed + 3))
{
    vspeed  += 3;
} else {    
    move_contact_solid(direction, MAXGRAVITY);
    vspeed = 0;
}

vspeed = min(vspeed, MAXGRAVITY);

