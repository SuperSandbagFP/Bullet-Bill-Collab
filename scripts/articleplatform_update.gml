//article1_update - runs every frame the article exists
//if (replacedcount > maxarticles){
//    shoulddie = true;
//}


//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)




//Make time progress

state_timer++;

/*
with (asset_get("pHitBox")){
	
if (damage > 0 && kb_value > 0){
	
if (other.player_id.runeL == false){

if (place_meeting(x,y,other.id) && other.player != player){
	if !(get_player_team(other.player_id.player ) == get_player_team( player_id.player )){
	if (other.clone_counter = true){
		other.clone_counter_attack = true;
	}
	else{
		other.clone_cooldown = true;
	}
		spawn_hit_fx( x+30, y, 13);
		other.clone_death_sound = true;
		other.shoulddie = true;
    }
}

}
    
if (attack == AT_FSPECIAL && (place_meeting(x,y,other.id) && other.player_id = player_id)){
	
	if (other.clone_counter = false){
		spawn_hit_fx( other.x, other.y-20, 13);
		spawn_hit_fx( player_id.x, player_id.y-20, 13);
		if ((player_id.attack == AT_FSTRONG || player_id.attack == AT_USTRONG || player_id.attack == AT_DSTRONG)
		&& (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)){
			player_id.strong_max = true;
		}
		player_id.x = other.x;
		sound_play(sound_get("counter_success"));
		if (other.free = true){
			player_id.y = other.y+5;
		}
		if (other.free = false){
			player_id.y = other.y;
		}
		
		other.clone_proj = true;
	}
	if (other.clone_counter = true){
		spawn_hit_fx( other.x, other.y-20, 143);
		other.clone_counter_attack = true;
		other.clone_proj = true;
	}
		
		other.shoulddie = true;
    }
    
if (attack == AT_USPECIAL && (place_meeting(x,y,other.id) && other.player_id = player_id)){
		other.clone_izuna = true;
		sound_play(sound_get("clone_blow"));
		other.shoulddie = true;
    }

}

}
*/




//State 0: Idle
if (state == 0){
	sprite_index = sprite_get("blaster_stand");
}

if (shoulddie == true && state_timer > 20){
	player_id.killarticles = false;
	player_id.blaster_out = false;
    instance_destroy();
    exit;
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



