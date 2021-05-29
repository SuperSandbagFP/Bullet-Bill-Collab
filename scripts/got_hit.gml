//Resets some stuff
move_cooldown[AT_NSPECIAL_AIR] = 0;

blaster_strong_draw = true;

torpedo_grab = false;

//If you get hit while using the Kamikaze
if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_NSPECIAL_AIR){
    kamikaze_hitme = true;
    spawn_hit_fx( x, y, 143);
    take_damage(player, -1, 10);
    
    spawn_hit_fx( blaster.x, blaster.y, blaster_smoke_big );
    blaster.shoulddie = true;
    blaster.state_timer = 20;
    sound_play(sound_get("blasterdeath_smw"));
}

//Getting hit when holding the blaster
if (torpedo_blaster == true){
    blaster.state = 0;
    torpedo_blaster = false;
}