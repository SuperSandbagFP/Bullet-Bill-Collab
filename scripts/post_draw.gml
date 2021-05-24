
print (move_cooldown[AT_FSTRONG]);

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL && window == 2){
    draw_sprite_ext(sprite_get("sniper_arm"), 0, x-6*spr_dir-scope_aim/10, y-38, spr_dir*2, 2, scope_aim, c_white, 1 );  
}

