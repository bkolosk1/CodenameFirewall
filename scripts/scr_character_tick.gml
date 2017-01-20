// PROVERKA NA VISINA NA SKOK
if(global.longJump)
{
    jHeight = 0.26;
}
if(!global.longJump)
{
    jHeight = 0.2;
}

view_xview[0] = x - (view_wview[0] / 2);
view_yview[0] = y - (view_hview[0] / 2);

/*if(speech_cooldown > speech_cooldown_mark)
{
    if(!(audio_is_playing(sfx_another_one) ||
        audio_is_playing(sfx_i_apreciate_you) ||
        audio_is_playing(sfx_we_the_best) ||
        audio_is_playing(sfx_win_win_win) ||
        audio_is_playing(sfx_you_a_genius) ||
        audio_is_playing(sfx_you_loyal) ||
        audio_is_playing(sfx_you_very_smart) ||
        audio_is_playing(sfx_i_am_not_nice) ||
        audio_is_playing(sfx_i_am_not_kind) ||
        audio_is_playing(sfx_i_am_not_wonderfull) ||
        audio_is_playing(sfx_fools) ||
        audio_is_playing(sfx_not_a_rapper)))
    {
        skeletor_selection = choose(sfx_another_one, sfx_i_apreciate_you, sfx_we_the_best, sfx_win_win_win, sfx_you_a_genius, sfx_you_loyal, sfx_you_very_smart, sfx_i_am_not_nice, sfx_i_am_not_kind, sfx_i_am_not_wonderfull, sfx_fools, sfx_not_a_rapper);
        audio_play_sound(skeletor_selection, 10, false);
        speech_cooldown = 0;
    }
}
*/
// DVIZHENJE
if(keyboard_check(vk_up))
{
    image_angle = 0;
    vspeed = -character_speed;
    hspeed = 0;
    image_speed = character_animation_speed;
    
    obj_shadow_player.image_angle = 0;
    obj_shadow_player.vspeed = -character_speed;
    obj_shadow_player.hspeed = 0;
    
    speech_cooldown++;
}

if(keyboard_check(vk_down))
{
    image_angle = 180;
    vspeed = character_speed;
    hspeed = 0;
    image_speed = character_animation_speed;
    
    obj_shadow_player.image_angle = 180;
    obj_shadow_player.vspeed = character_speed;
    obj_shadow_player.hspeed = 0;
    speech_cooldown++;
}


if(keyboard_check(vk_left))
{
    image_angle = 90;
    vspeed = 0;
    hspeed = -character_speed;
    image_speed = character_animation_speed;
    
    obj_shadow_player.image_angle = 90;
    obj_shadow_player.vspeed = 0;
    obj_shadow_player.hspeed = -character_speed;
    speech_cooldown++;
}


if(keyboard_check(vk_right))
{
    image_angle = 270;
    vspeed = 0;
    hspeed = character_speed;
    image_speed = character_animation_speed;
    
    obj_shadow_player.image_angle = 270;
    obj_shadow_player.vspeed = 0;
    obj_shadow_player.hspeed = character_speed;
    speech_cooldown++;
}


if(keyboard_check(vk_up) && keyboard_check(vk_left)) 
{ 
    image_angle = 45; 
    hspeed = -character_speed_sideways; 
    vspeed = -character_speed_sideways;
    image_speed = character_animation_speed;
    
    obj_shadow_player.image_angle = 45; 
    obj_shadow_player.hspeed = -character_speed_sideways; 
    obj_shadow_player.vspeed = -character_speed_sideways; 
    speech_cooldown++;
} 

if(keyboard_check(vk_up) && keyboard_check(vk_right)) 
{ 
    image_angle = 360 - 45; 
    hspeed = character_speed_sideways; 
    vspeed = -character_speed_sideways;
    image_speed = character_animation_speed;
    
    obj_shadow_player.image_angle = 360 - 45; 
    obj_shadow_player.hspeed = character_speed_sideways; 
    obj_shadow_player.vspeed = -character_speed_sideways; 
    speech_cooldown++;
} 

if(keyboard_check(vk_down) && keyboard_check(vk_left)) 
{ 
    image_angle = 180 - 45; 
    hspeed = -character_speed_sideways; 
    vspeed = character_speed_sideways;
    image_speed = character_animation_speed;
    
    obj_shadow_player.image_angle = 180 - 45; 
    obj_shadow_player.hspeed = -character_speed_sideways; 
    obj_shadow_player.vspeed = character_speed_sideways; 
    speech_cooldown++;
} 

if(keyboard_check(vk_down) && keyboard_check(vk_right)) 
{ 
    image_angle = 180 + 45; 
    hspeed = character_speed_sideways; 
    vspeed = character_speed_sideways;
    image_speed = character_animation_speed;
    
    obj_shadow_player.image_angle = 180 + 45; 
    obj_shadow_player.hspeed = character_speed_sideways; 
    obj_shadow_player.vspeed = character_speed_sideways; 
    speech_cooldown++;
}

// ABILITIES 

// JUMP
if(keyboard_check(vk_control))
{
    if(bJumpUp == 0)
    {
        mask = sprite_duplicate(spr_player);
        sprite_collision_mask(mask,false,2,10,10,10,10,0,255);
        mask_index = mask;
        
        bJumpUp = 1;
        //number_of_jumps++;
    }
}
// STOP NA ANIMACIJA NA SPRAJT
if(keyboard_check_released(vk_up) || keyboard_check_released(vk_down) || keyboard_check_released(vk_left) || keyboard_check_released(vk_right) )
{
    image_speed = 0;
}

// NE SKOK
if(bJumpUp == 0)
{
    obj_shadow_player.x = x;
    obj_shadow_player.y = y;
}

// SKOK
if(bJumpUp != 0)
{
    image_speed = 0;
}

if(bJumpUp == 1)
{
    image_xscale += 0.02;
    image_yscale += 0.02;
    
    obj_shadow_player.x += 0.8;
    obj_shadow_player.y += 0.8;
    
    obj_shadow_player.image_xscale -= 0.02;
    obj_shadow_player.image_yscale -= 0.02;
    
    if(image_xscale == scaleStart + jHeight)
        bJumpUp = 2;
}

if(bJumpUp == 2)
{
    image_xscale -= 0.02;
    image_yscale -= 0.02;
    
    obj_shadow_player.x -= 0.8;
    obj_shadow_player.y -= 0.8;
    
    obj_shadow_player.image_xscale += 0.02;
    obj_shadow_player.image_yscale += 0.02;
    
    if(image_xscale == scaleStart)
    {
        mask_index = spr_player;
        if(place_meeting(x, y, obj_wall))
        {
            moveTo = instance_nearest(x, y, obj_walkway);
            x = moveTo.x;
            y = moveTo.y;
        }
        bJumpUp = 0;
    }
}

// FALLING 

if(!position_meeting(x, y, obj_walkway) <= 1)
{
    fall = true;
}

if(fall == true)
{
    if (image_xscale > 0.03)
    {
        // Falling animation
        image_xscale -= 0.08;
        image_yscale -= 0.08;
        depth+=10;
        
        obj_shadow_player.depth = 301;
        obj_shadow_player.image_xscale -= 0.08;
        obj_shadow_player.image_yscale -= 0.08;
    }
    else
    {
        global.lives--;
        game_restart();
    }
}
