//got_parried - called when an opponent parries your attack

if ((my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2) 
|| (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2)
|| (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2)){
	spawn_hit_fx( blaster.x, blaster.y, blaster_smoke_big );
	sound_play(sound_get("blasterdeath_smw"));
    blaster.shoulddie = true;
    blaster.state_timer = 17;
}
