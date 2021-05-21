if (my_hitboxID.attack == AT_NSPECIAL_AIR){
	spawn_hit_fx( x, y, 143);
	window = 12;
	window_timer = 6;
        if (blaster_out == false){
        	hitpause = false;
            create_deathbox( x, y, 2, 2, player, true, 0, 2, 2); 
        }
        else {
        	destroy_hitboxes();
        	sound_play(asset_get("sfx_death1"));
        	visible = false;
        	window = 12;
        	window_timer = 1;
        	kamikaze = 1;
            x = blaster.x;
            y = blaster.y;
        }
        
}

if (my_hitboxID.attack == AT_USPECIAL && tanooki_turn == false){
	hit_player_obj.spr_dir *= -1;
	hit_player_obj.hsp = hit_player_obj.hsp*-1;
	tanooki_turn = true;
}
