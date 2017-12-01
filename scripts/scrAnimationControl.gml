switch (action)
{
    case IDLE :
        sprite_index = myIdle;
        image_speed = 0.1;
        break;
    case RUN :
        sprite_index = myRun;
        image_speed = 0.5;
        break;
    case INAIR :
        sprite_index = myInAir;
        image_speed = 0.1;
        break;
    case DAMAGE :
        sprite_index = myDamage;
        image_speed = 0.5;
        break; 
    case PUNCH :
        sprite_index = myPunch;
        image_speed = 0.1;
        break; 
    case KICK :
        sprite_index = myKick;
        image_speed = 0.1;
        break; 
    case SPECIAL :
        sprite_index = mySpecial;
        image_speed = 0.5;
        break; 
    case BLOCK :
        sprite_index = myBlock;
        image_speed = 0.1;
        break;
}

image_xscale = facing;

