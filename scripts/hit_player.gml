

if (my_hitboxID.attack == AT_NSPECIAL_AIR){
	spawn_hit_fx( x, y, 143);
	window = 12;
	window_timer = 6;
        if (blaster_out == false){
        	hitpause = false;
            create_deathbox( x, y, 2, 2, player, true, 0, 2, 2); 
        }
        else {
        	if (!hitpause){
        		sound_play(sound_get("kamihit_yi"));	
        	}
        	spawn_hit_fx( blaster.x, blaster.y, 306 );
        	kamikaze_dir = spr_dir;
        	take_damage(player, -1, 5);
        	destroy_hitboxes();
//        	sound_play(sound_get("kamikazehit_smw"));
        	visible = false;
        	invincible = true;
        	window = 12;
        	window_timer = 1;
        	kamikaze = 1;
        	
        	
        	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
        		blaster_dir = spr_dir;
        		blaster_anim = 1;
        		strong_direction = 0;
        	}
        	
        	if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
        		blaster_anim = 5;
        		blaster_dir = -spr_dir;
        		strong_direction = 2;
        	}
        	
        	if (my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6){
        		blaster_anim = 2;
        		strong_direction = 1;
        	}
        	
        	if (my_hitboxID.hbox_num == 7 || my_hitboxID.hbox_num == 8){
        		blaster_anim = 4;
        		strong_direction = 1;
        	}
        	
        	if (my_hitboxID.hbox_num == 9 || my_hitboxID.hbox_num == 10){
        		blaster_anim = 3;
        		blaster_dir = spr_dir;
        		strong_direction = 2;
        	}
        	
        	blaster_anim_frame = 0;
            x = blaster.x;
            y = blaster.y;
            
            kamikaze_hit = true;
        }
        
}

if (my_hitboxID.attack == AT_USPECIAL && tanooki_turn == false){
	hit_player_obj.spr_dir *= -1;
	hit_player_obj.hsp = hit_player_obj.hsp*-1;
	tanooki_turn = true;
}

//Grabbing opponent
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && torpedo_grab == false){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        //Timer is the opponent percentage + 60
//	        grab_timer = get_player_damage(hit_player_obj.player) + 60;
	        
	        window = 3;
	        window_timer = 1;
	        
	        grab_dir = 0;
	        torpedo_grab = true;
            window = 3;
            window_timer = 1;
	        hit_player_obj.x = x+80*spr_dir;
	        hit_player_obj.y = y;
	        
	  }
}

if (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 2){
	sound_play(sound_get("meow_mp"));
}