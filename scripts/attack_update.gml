//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 3 && window_timer == 8 && blaster_out == false){
        blaster = instance_create(x, y-48, "obj_article_platform");
        blaster_out = true;
    }
}

if (attack == AT_NSPECIAL_AIR){
    if (window == 1 && window_timer == 15){
        move_cooldown[AT_NSPECIAL_AIR] = 999;
        if (spr_dir == 1 && left_down == true){
            spr_dir = -1;
        }
        if (spr_dir == -1 && right_down == true){
            spr_dir = 1;
        }
        
        
        if ((joy_pad_idle || right_down || left_down) && !up_down && !down_down){
            window = 2;
            window_timer = 1;
        }
        if ((right_down || left_down) && up_down && !down_down){
            window = 4;
            window_timer = 1;
        }
        if (up_down && !right_down && !left_down && !down_down){
            window = 6;
            window_timer = 1;
        }
        if (down_down && !right_down && !left_down && !up_down){
            window = 8;
            window_timer = 1;
        }
        if ((right_down || left_down) && !up_down && down_down){
            window = 10;
            window_timer = 1;
        }
    }
    
    if (state_timer >= 20 && window != 12 && !hitpause){
        if (((window == 10 || window == 11 || window <= 5) && hsp == 0)
        || (window >= 4 && (vsp == .5 || vsp == 0))){
            spawn_hit_fx( x, y, 143);
            if (blaster_out == false){
                create_deathbox( x+50, y, 200, 200, player, true, 0, 2, 2); 
            }
            else {
                sound_play(asset_get("sfx_death1"));
                window = 12;
                window_timer = 1;
                x = blaster.x;
                y = blaster.y;
                blaster.shoulddie = true;
                blaster.state_timer = 0;
            }
        }
    }
    
    /*
    if ((window == 2 || window == 3) && hsp == 0 && window_timer > 0){
            spr_dir *= -1;
        }
    if ((window == 4 || window == 5) && window_timer > 0){
        if (vsp == 0 && hsp != 0){
            window += 6;
        }
        if (vsp == 0 && hsp == 0){
            window += 6;
            spr_dir *= -1;
        }
        if (vsp != 0 && hsp == 0){
            spr_dir *= -1;
        }
    }
    if ((window == 6 || window == 7) && vsp == 0 && window_timer > 0){
            window += 2;
        }
    if ((window == 8 || window == 9) && vsp == 0 && window_timer > 0){
            window -= 2;
        }
    if ((window == 10 || window == 11) && window_timer > 0){
        if (vsp == 0 && hsp != 0){
            window -= 6;
        }
        if (vsp == 0 && hsp == 0){
            window -= 6;
            spr_dir *= -1;
        }
        if (vsp != 0 && hsp == 0){
            spr_dir *= -1;
        }
    }
    */
    
    if (state_timer > 15 && state_timer < 25){
        switch (window){
            case 2:
                hsp = 7*spr_dir;    
            break
            case 4:
                hsp = 4*spr_dir; 
                vsp = -4;
            break
            case 6:
                vsp = -6;    
            break
            case 8:
                vsp = 6;    
            break
            case 10:
                hsp = 4*spr_dir; 
                vsp = 4;    
            break
        }
        
    }
    if (state_timer >= 25){
        switch (window){
            case 2:
                hsp = 11*spr_dir;    
            break
            case 4:
                hsp = 7*spr_dir;  
                vsp = -7;
            break
            case 6:
                vsp = -10;    
            break
            case 8:
                vsp = 10;    
            break
            case 10:
                hsp = 7*spr_dir;  
                vsp = 7;   
            break
        }
    }
    
    if (state_timer == 45){
        window += 1;
        window_timer = 1;
    }
    
    
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}

if (attack == AT_USPECIAL){
    if (window == 1){
        tannoki_turn = false;
    }
    if (!free){
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
    }
    else {
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -8);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}

