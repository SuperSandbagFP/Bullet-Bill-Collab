//article1_update - runs every frame the article exists
//if (replacedcount > maxarticles){
//    shoulddie = true;
//}


//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)




//Make time progress

state_timer++;

if (state == 0 && state_timer < 10 && dying == false){
	visible = false;
}

else {
	visible = true;
}


with (asset_get("pHitBox")){

if (attack == AT_FSPECIAL && (place_meeting(x,y,other.id) && other.player_id = player_id)){
	
	
	if (hbox_num == 1 && player_id.torpedo_blaster == false && player_id.hitpause == false){
		sound_play(asset_get("sfx_clairen_nspecial_grab_success"));
		player_id.torpedo_blaster = true;
		other.spr_dir = player_id.spr_dir;
	}
	
	if (hbox_num == 2 && player_id.torpedo_blaster == false){
		other.state = 1;
		other.state_timer = 0;
		other.spr_dir = player_id.spr_dir;
	}
	
	if (hbox_num == 3 && player_id.torpedo_blaster == false){
		other.state = 2;
		other.state_timer = 0;
	}
	
	if (hbox_num == 4 && player_id.torpedo_blaster == false){
		other.state = 3;
		other.state_timer = 0;
	}
		
    }
    
if (attack == AT_USPECIAL && (place_meeting(x,y,other.id) && other.player_id = player_id)){
	other.state = 4;
	other.state_timer = 0;
}
    
}


//State 0: Idle
if (state == 0){	//Fazer ficar intercalando entre as masks, quando for 
	sprite_index = sprite_get("blaster_stand");	
	mask_index = sprite_get("blaster_mask");
	hsp = 0;
	vsp = 0;
}

//State 1: Launch Forward
if (state == 1){
	
	
	
	if (state_timer > 2){
		create_hitbox(AT_NSPECIAL, 1, x+5*spr_dir, y);
	}
	
	sprite_index = sprite_get("blaster_stand");
	mask_index = sprite_get("blaster_mask");
	if (state_timer == 0){
		hsp = 7*spr_dir;
		vsp = -4;
	}
	if ((spr_dir == 1 && hsp > 0) || (spr_dir == -1 && hsp < 0)){
			hsp -= .07*spr_dir;
		}
		vsp += .3;
		
		if (!free){
			state = 0;
			state_timer = 30;
		}
}

//State 2: Launch Upward
if (state == 2){
	
	if (state_timer > 2 && vsp < 0){
		create_hitbox(AT_NSPECIAL, 2, x+5*spr_dir, y);
	}
	
	if (vsp > 0){
		create_hitbox(AT_NSPECIAL, 3, x+5*spr_dir, y);
	}
	
	sprite_index = sprite_get("blaster_stand");
	mask_index = sprite_get("blaster_mask");
	
	if (state_timer == 0){
		vsp = -7;
	}
	if (state_timer > 10 && vsp < 5){
		vsp += .4;
	}
	if (!free){
		state = 0;
		state_timer = 30;
	}
	
}

//State 3: Launch Downward
if (state == 3){
	
	if (state_timer > 2){
		create_hitbox(AT_NSPECIAL, 3, x+5*spr_dir, y);
	}
	
	sprite_index = sprite_get("blaster_stand");
	mask_index = sprite_get("blaster_mask");
	
	if (state_timer == 0){
		vsp = 7;
	}
	if (!free){
		state = 0;
		state_timer = 30;
	}
	
}

if (state >= 1 && state < 4 && state_timer == 1){
		sound_play(asset_get("sfx_blow_heavy2"));
}

//State 4: Launch Upward Tanooki
if (state == 4){
	
	if (state_timer > 2 && vsp < 0){
		create_hitbox(AT_NSPECIAL, 2, x+5*spr_dir, y);
	}
	
	if (vsp > 0){
		create_hitbox(AT_NSPECIAL, 3, x+5*spr_dir, y);
	}
	
	sprite_index = sprite_get("blaster_stand");
	mask_index = sprite_get("blaster_mask");
	
	if (state_timer == 0){
		spr_dir = player_id.spr_dir
		vsp = -5;
		hsp = 2*spr_dir;
	}
	if (state_timer > 5 && vsp < 5){
		vsp += .4;
	}
	if ((spr_dir == 1 && hsp > 0) || (spr_dir == -1 && hsp < 0)){
			hsp -= .05*spr_dir;
		}
	if (!free){
		state = 0;
		state_timer = 30;
	}
	
}

//State 5: Falling when getting hit
if (state == 5){
	sprite_index = sprite_get("blaster_stand");	
	mask_index = sprite_get("blaster_mask");
	vsp = 5;
	if (!free){
		state = 0;
	}
}

if (((x + hsp) < 10) || ((x + hsp) > (room_width + 70))){
		shoulddie = true;
	}
	
var stage_y = get_stage_data( SD_Y_POS );
var stage_b = get_stage_data( SD_BOTTOM_BLASTZONE );

if (stage_y + stage_b < y){
	shoulddie = true;
}

if (shoulddie == true && state_timer > 20){
	player_id.killarticles = false;
	player_id.blaster_out = false;
    instance_destroy();
    exit;
}

if (state == 0){
		if (!free || !freemd){
			y-=1;
			}
		else {
			vsp = 5;	
		}
}

/*


//Destroy when offstage

if ((y + vsp) < 10) || ((x + hsp) < 10)
|| ((x + hsp) > (room_width + 70)) || ((y + vsp) >= (room_height + 70)){
		shoulddie = true;
	}


if (shoulddie == true){
	player_id.killarticles = false;
	player_id.hat_out = false;
    instance_destroy();
    exit;
}




