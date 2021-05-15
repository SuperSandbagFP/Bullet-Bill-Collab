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
        if (spr_dir == 1 && left_down == true){
            spr_dir = -1;
        }
        if (spr_dir == -1 && right_down == true){
            spr_dir = 1;
        }
        
        if (joy_pad_idle){
            spr_dir *= -1;
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
    
    if (state_timer == 35 && window != 12){
        window += 1;
        window_timer = 1;
    }
    
    if (((window == 3 || window == 5 || window == 7 || window == 9 || window == 11) && window_timer == 8)
    || (window == 12)){
        if (blaster_out == false){
            create_deathbox( x, y, 2, 2, player, true, 0, 2, 2); 
        }
        else {
            x = blaster.x;
            y = blaster.y;
            blaster.shoulddie = true;
            blaster.state_timer = 0;
        }
        
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
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}

