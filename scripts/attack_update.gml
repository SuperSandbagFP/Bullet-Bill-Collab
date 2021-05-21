//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 3 && window_timer == 4 && blaster_out == true){
            blaster.shoulddie = true;
        }
    if (window == 3 && window_timer == 8){
        blaster = instance_create(x, y-48, "obj_article_platform");
        blaster_out = true;
    }
}

if (attack == AT_NSPECIAL_AIR){
    if (window == 1 && window_timer < 15 && blaster_out == true && shield_pressed && !free){
        attack = AT_NSPECIAL;
        window_timer = 1;
        hurtboxID.sprite_index = sprite_get("nspecial_hurt");
    }
    if (window == 1 && window_timer == 15){
        has_hit = false;
        move_cooldown[AT_NSPECIAL_AIR] = 999;
        if (spr_dir == 1 && left_down == true){
            spr_dir = -1;
        }
        if (spr_dir == -1 && right_down == true){
            spr_dir = 1;
        }
        kamikaze_dir = spr_dir;
        
        if ((joy_pad_idle || right_down || left_down) && !up_down && !down_down){
            window = 2;
            kamikaze_strong = 2;
            window_timer = 1;
        }
        if ((right_down || left_down) && up_down && !down_down){
            window = 4;
            kamikaze_strong = 4;
            window_timer = 1;
        }
        if (up_down && !right_down && !left_down && !down_down){
            window = 6;
            kamikaze_strong = 6;
            window_timer = 1;
        }
        if (down_down && !right_down && !left_down && !up_down){
            window = 8;
            kamikaze_strong = 8;
            window_timer = 1;
        }
        if ((right_down || left_down) && !up_down && down_down){
            window = 10;
            kamikaze_strong = 10;
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
                destroy_hitboxes();
                kamikaze = 1;
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
        tanooki_turn = false;
    }
    if (!free){
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
        
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
        
        set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -33);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -34);
    }
    else {
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -13);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
        
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 18);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
        
        set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -13);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -14);
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}

if (attack == AT_STRONG){
    
        can_fast_fall = false;
        set_window_value(AT_STRONG, 2, AG_WINDOW_HSPEED, 9+strong_charge/3);
        set_window_value(AT_STRONG, 4, AG_WINDOW_HSPEED, 6+strong_charge/3);
        set_window_value(AT_STRONG, 4, AG_WINDOW_VSPEED, -6-strong_charge/3);
        set_window_value(AT_STRONG, 6, AG_WINDOW_VSPEED, -9-strong_charge/3);
        set_window_value(AT_STRONG, 8, AG_WINDOW_VSPEED, 9+strong_charge/3);
        set_window_value(AT_STRONG, 10, AG_WINDOW_HSPEED, 6+strong_charge/3);
        set_window_value(AT_STRONG, 10, AG_WINDOW_VSPEED, 6+strong_charge/3);
        
    
    if (window == 1){
        if (right_strong_down || left_strong_down || up_strong_down || down_strong_down){
            strong_down = true;
        }
        
        blaster_dir = spr_dir;
        blaster_strong_draw = false;
        set_attack_value(AT_STRONG, AG_SPRITE, sprite_get("blaster_top_default"));
        if (window_timer == 1){
            if (right_strong_pressed || left_strong_pressed){
                set_window_value(AT_STRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
                set_window_value(AT_STRONG, 1, AG_WINDOW_GOTO, 2);
                strong_direction = 0;
            }
            if (up_strong_pressed){
                set_window_value(AT_STRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
                set_window_value(AT_STRONG, 1, AG_WINDOW_GOTO, 6);
                strong_direction = 1;
            }
            if (down_strong_pressed){
                set_window_value(AT_STRONG, 1, AG_WINDOW_ANIM_FRAME_START, 2);
                set_window_value(AT_STRONG, 1, AG_WINDOW_GOTO, 10);
                strong_direction = 2;
            }
        }
        
        x = blaster.x;
        y = blaster.y;
    }
    else {
        set_attack_value(AT_STRONG, AG_SPRITE, sprite_get("strong"));
        blaster_strong_draw = true;
    }
    if (window == 2 && window_timer == 1){
        x = blaster.x +50*spr_dir;
        y = blaster.y +30;
    }
    if (window == 10 && window_timer == 1){
        x = blaster.x +40*spr_dir;
        y = blaster.y +50;
    }
    
    
    if (window_timer > 2){
    
    if ((window == 2 || window == 3) && hsp == 0 && window_timer > 0 && !hitpause){
            destroy_hitboxes();
            spr_dir *= -1;
            window_timer = 1;
        }
    if ((window == 4 || window == 5) && window_timer > 0 && !hitpause){
        if (vsp == 0 && hsp != 0){
            destroy_hitboxes();
            window_timer = 1;
            window += 6;
        }
        if (vsp == 0 && hsp == 0 && !hitpause){
            destroy_hitboxes();
            window_timer = 1;
            window += 6;
            spr_dir *= -1;
        }
        if (vsp != 0 && hsp == 0 && !hitpause){
            destroy_hitboxes();
            window_timer = 1;
            spr_dir *= -1;
        }
    }
    if ((window == 6 || window == 7) && vsp == 0 && window_timer > 0 && !hitpause){
        destroy_hitboxes();
        window_timer = 1;
            window += 2;
        }
    if ((window == 8 || window == 9) && vsp == 0 && window_timer > 0 && !hitpause){
        destroy_hitboxes();
        window_timer = 1;
            window -= 2;
        }
    if ((window == 10 || window == 11) && window_timer > 1 && !hitpause){
        if (vsp == 0 && hsp != 0){
            destroy_hitboxes();
            window_timer = 1;
            window -= 6;
        }
        if (vsp == 0 && hsp == 0 && !hitpause){
            destroy_hitboxes();
            window_timer = 1;
            window -= 6;
            spr_dir *= -1;
        }
        if (vsp != 0 && hsp == 0 && !hitpause){
            destroy_hitboxes();
            window_timer = 1;
            spr_dir *= -1;
        }
    }
    }
    
    
}

if (attack == AT_FSTRONG){
    if (window == 2 && window_timer == 3 && !hitpause){
        spawn_hit_fx( blaster.x+50*spr_dir, blaster.y-10, 139);
        create_hitbox(AT_FSTRONG, 2, blaster.x+50*spr_dir, blaster.y-10);
        strong_direction = 0;
        sound_play(asset_get("sfx_ell_strong_attack_explosion"));
    }
}

if (attack == AT_USTRONG){
    if (window == 2 && window_timer == 3 && !hitpause){
        spawn_hit_fx( blaster.x, blaster.y-40, 139);
        create_hitbox(AT_USTRONG, 2, blaster.x, blaster.y-40);
        strong_direction = 1;
        sound_play(asset_get("sfx_ell_strong_attack_explosion"));
    }
}

if (attack == AT_DSTRONG){
    if (window == 2 && window_timer == 3 && !hitpause){
        spawn_hit_fx( blaster.x+40*spr_dir, blaster.y+30, 139);
        create_hitbox(AT_DSTRONG, 2, blaster.x+40*spr_dir, blaster.y+30);
        strong_direction = 2;
        blaster_dir = spr_dir;
        sound_play(asset_get("sfx_ell_strong_attack_explosion"));
    }
}



