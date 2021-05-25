

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL && window == 2){
    draw_sprite_ext(sprite_get("sniper_scope"), 0, x+15*spr_dir, y-40, spr_dir*2, 2, scope_aim, c_white, 1 );    
}

