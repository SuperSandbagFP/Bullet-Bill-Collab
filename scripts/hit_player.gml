if (my_hitboxID.attack == AT_NSPECIAL_AIR){
	spawn_hit_fx( x, y, 143);
	window = 12;
	window_timer = 6;
        if (blaster_out == false){
        	hitpause = false;
            create_deathbox( x, y, 2, 2, player, true, 0, 2, 2); 
        }
        else {
        	sound_play(asset_get("sfx_death1"));
            x = blaster.x;
            y = blaster.y;
            hsp = 0;
            vsp = 0;
        }
        
}

if (my_hitboxID.attack == AT_USPECIAL && tannoki_turn == false){
	hit_player_obj.spr_dir *= -1;
	tannoki_turn = true;
}
