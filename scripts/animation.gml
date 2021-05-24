if (state == PS_SPAWN) {
    if (introTimer < [number of animation frames] && introTimer >= 0) {
        sprite_index = asset_get("empty_sprite");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = asset_get("empty_sprite");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}