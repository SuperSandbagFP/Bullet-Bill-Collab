
if (attack == AT_DSPECIAL){
	
	if (hitbox_timer == 1){
		proj_angle = player_id.scope_aim;	
	}
	
	if (hbox_num == 10){
		proj_angle = 90;	
	}
	
	if (hbox_num == 9){
		proj_angle = -45*spr_dir;	
	}

	if ((x > player_id.blaster.x-60 && x < player_id.blaster.x+60)  
	&& (y > player_id.blaster.y-30 && y < player_id.blaster.y+110)){
    
    
    if (player_id.blaster_mini < 5 && hbox_num < 8){
    	player_id.blaster_mini++;
    	destroyed = true;
    }
    	
	}

}