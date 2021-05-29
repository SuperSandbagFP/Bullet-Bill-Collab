print (was_parried);

//DSpecial Arm
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL && window == 2){
    draw_sprite_ext(sprite_get("sniper_arm"), 0, x-3*spr_dir-scope_aim/20, y-38, spr_dir*2, 2, scope_aim/2, c_white, 1 );  
}

