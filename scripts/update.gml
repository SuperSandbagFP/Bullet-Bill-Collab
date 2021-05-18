//B - Reversals
if (!free || state == PS_WALL_JUMP){
    move_cooldown[AT_NSPECIAL_AIR] = 0;
}

if (state == PS_ATTACK_AIR && attack == AT_NSPECIAL_AIR){
    can_fast_fall = false;
}