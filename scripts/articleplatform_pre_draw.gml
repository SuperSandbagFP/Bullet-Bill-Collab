if (player_id.blaster_strong_draw == true) {
    
    if (player_id.blaster_anim == 0){
    
        draw_sprite_ext(sprite_get("blaster_top_default"), player_id.strong_direction, 
        x, y, player_id.blaster_dir*2, 2, 0, c_white, 1 );
    
    }
    
    if (player_id.blaster_anim == 1){
        draw_sprite_ext(sprite_get("blaster_top_shoot"), player_id.blaster_anim_frame, 
        x, y, player_id.blaster_dir*2, 2, 0, c_white, 1 );
    }
    
    if (player_id.blaster_anim == 2){
        draw_sprite_ext(sprite_get("blaster_top_shoot_up"), player_id.blaster_anim_frame, 
        x, y, player_id.blaster_dir*2, 2, 0, c_white, 1 );
    }
    
}
