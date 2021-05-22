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

        visible = true;
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
        kamikaze = 0;
    }
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

if ((x > blaster.x-60 && x < blaster.x+60) && (y > blaster.y-10 && y < blaster.y+110) && blaster_out == true){
    blaster_close = true;
    move_cooldown[AT_STRONG] = 0;
}
else {
    blaster_close = false;
    move_cooldown[AT_STRONG] = 999;
}


