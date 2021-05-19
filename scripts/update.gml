//B - Reversals
if (!free || state == PS_WALL_JUMP){
    move_cooldown[AT_NSPECIAL_AIR] = 0;
}

if (state == PS_ATTACK_AIR && attack == AT_NSPECIAL_AIR){
    can_fast_fall = false;
}

move_cooldown[AT_STRONG] = 999;

if ((x > blaster.x-60 && x < blaster.x+60) && (y > blaster.y-10 && y < blaster.y+110) && blaster_out == true){
    blaster_close = true;
    move_cooldown[AT_STRONG] = 0;
}
else {
    blaster_close = false;
    move_cooldown[AT_STRONG] = 999;
}