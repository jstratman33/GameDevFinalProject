if (place_free( x, y + vspeed + 1))
{
    vspeed  += 1;
} else {    
    move_contact_solid(direction, MAXGRAVITY);
    vspeed = 0;
}

vspeed = min(vspeed, MAXGRAVITY);

