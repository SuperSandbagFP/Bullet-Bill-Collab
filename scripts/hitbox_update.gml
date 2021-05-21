
if (attack == AT_DSPECIAL){
	proj_angle = player_id.scope_aim;
}

if ((x > player_id.blaster.x-60 && x < player_id.blaster.x+60) && player_id.scope_fast == false && hitbox_timer > 2 
&& (y > player_id.blaster.y-30 && y < player_id.blaster.y+110) && player_id.blaster_out == true){
    sprite_index = sprite_get("sniper_bullet_strong");
    player_id.scope_fast = true;
    hsp += 3*spr_dir;
    damage = 10;
    kb_value = 7;
    hitpause = 10;
    if (vsp > 0){
    	vsp += 3;
    }
    if (vsp < 0){
    	vsp -= 3;
    }
}
