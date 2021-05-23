//B - Reversals
if (!free || state == PS_WALL_JUMP){
    move_cooldown[AT_NSPECIAL_AIR] = 0;
}

if (state == PS_ATTACK_AIR && attack == AT_NSPECIAL_AIR){
    can_fast_fall = false;
}

move_cooldown[AT_STRONG] = 999;

if (kamikaze > 0 && !hitpause){
    kamikaze++;
    spr_dir = kamikaze_dir;
    if (kamikaze > 2){

        
        blaster_dir = spr_dir;
        switch (kamikaze_strong){
            case 2:
                x = blaster.x+50*spr_dir;
                y = blaster.y+30;
                strong_direction = 0;   
            break
            case 4:
                x = blaster.x +40*spr_dir;
                y = blaster.y -50;
                strong_direction = 2; 
                blaster_dir = -spr_dir;
            break
            case 6:
                x = blaster.x;
                y = blaster.y -50;
                strong_direction = 1;    
            break
            case 8:
                x = blaster.x;
                y = blaster.y +50;
                strong_direction = 1;     
            break
            case 10:
                x = blaster.x +40*spr_dir;
                y = blaster.y +50;
                strong_direction = 2;    
            break
        }
        set_attack( AT_STRONG );
        window = kamikaze_strong;
        window_timer = 0;
        if (kamikaze_hit == true){
        	kamikaze = 0;
        	visible = true;	
        }
        
    }
}

if (blaster_anim != 0 && blaster_anim_frame >= 0 && kamikaze > 0){
	blaster_anim_frame += .25;
	destroy_hitboxes();
}

if (blaster_anim != 0 && blaster_anim_frame >= 0 && kamikaze == 0 && window_timer != 8){
	blaster_anim_frame += .25;
}

if (blaster_anim_frame == 3.5 && kamikaze > 0){
	if (blaster_anim == 1){
		spawn_hit_fx( blaster.x+30*spr_dir, blaster.y-45, blaster_smoke_1 );
	}
	if (blaster_anim == 2){
		spawn_hit_fx( blaster.x-35*spr_dir, blaster.y-105, blaster_smoke_2 );
	}
}

if (blaster_anim_frame > 4){
	if (kamikaze_hit == false){
		kamikaze = 0;
		visible = true;	
	}
	
	blaster_anim_frame = -1;
	blaster_anim = 0;
}

if (scope_aim == 31){
    scope_aim = 30;
}

if (scope_aim == -31){
    scope_aim = -30;
}

scope_aim_proj = scope_aim*spr_dir;

// Grabbing state
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && torpedo_grab == true && attack == AT_FSPECIAL){
	hit_player_obj.x = x+80*spr_dir;
	hit_player_obj.y = y;
	hit_player_obj.spr_dir = spr_dir;
	hit_player_obj.hitstop = 1;
	
	if (window == 3){
	    if (window_timer > 0 && window_timer < 3){
	        hit_player_obj.x = x+110*spr_dir;  
	    }
	    if (window_timer >= 3 && window_timer < 6){
	        hit_player_obj.x = x+130*spr_dir;  
	    }
	    if (window_timer >= 6){
	        hit_player_obj.x = x+110*spr_dir;  
	    }
	}
	
	if (window >= 4){
	    hit_player_obj.x = x+125*spr_dir;
	}
	
	if(has_hit_player && window > 4){
	    torpedo_grab = false;
	}

}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && torpedo_blaster == true && attack == AT_FSPECIAL){
	
	if (window == 2){
		window = 3;
	}
	
	blaster.x = x+80*spr_dir;
	blaster.y = y-50;
	
	if (window == 3){
	    if (window_timer > 0 && window_timer < 3){
	        blaster.x = x+110*spr_dir;  
	    }
	    if (window_timer >= 3 && window_timer < 6){
	        blaster.x = x+130*spr_dir;  
	    }
	    if (window_timer >= 6){
	        blaster.x = x+110*spr_dir;  
	    }
	}
	
	if (window == 4){
	    blaster.x = x+125*spr_dir;
	}
	
	if (window >= 5){
		blaster.x = x+125*spr_dir;
	    torpedo_blaster = false;
	}
	

}

if (blaster_mini_shoot == 1){
	if (blaster_mini == round(blaster_mini) && blaster_mini > 0){
		create_hitbox(AT_DSPECIAL, 8, blaster.x, blaster.y);
	}
	if (blaster_mini > 0){
		blaster_mini -= .1;	
	}
	else {
		blaster_mini_shoot = 0;
	}
}

if (blaster_mini_shoot == 2){
	if (blaster_mini == 1 || blaster_mini == 2 || blaster_mini == 3 || blaster_mini == 4 || blaster_mini == 5){
		create_hitbox(AT_DSPECIAL, 9, blaster.x, blaster.y);
	}
	if (blaster_mini > 0){
		blaster_mini -= .1;	
	}
	else {
		blaster_mini_shoot = 0;
	}
}

if (blaster_mini_shoot == 3){
	if (blaster_mini == 1 || blaster_mini == 2 || blaster_mini == 3 || blaster_mini == 4 || blaster_mini == 5){
		create_hitbox(AT_DSPECIAL, 10, blaster.x, blaster.y);
	}
	if (blaster_mini > 0){
		blaster_mini -= .1;	
	}
	else {
		blaster_mini_shoot = 0;
	}
}

if ((x > blaster.x-60 && x < blaster.x+60) && (y > blaster.y-10 && y < blaster.y+110) && blaster_out == true){
    blaster_close = true;
    move_cooldown[AT_STRONG] = 0;
}
else {
    blaster_close = false;
    move_cooldown[AT_STRONG] = 999;
}


