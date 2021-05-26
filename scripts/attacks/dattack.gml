set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("firemove_smb3"));
//set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .45);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .45);

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 3);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 17);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 74);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 29);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("firehit_smw"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 17);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 74);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 29);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("firehit_smw"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 17);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 84);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 39);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get("firehit_smw"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 3);