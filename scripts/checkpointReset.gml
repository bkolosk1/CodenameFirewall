/*obj_player_ice.x = global.currentCheckpointX;
obj_player_ice.y = global.currentCheckpointY;

obj_player_fire.x = global.currentCheckpointX;
obj_player_fire.y = global.currentCheckpointY;

obj_shadow_ice.x = global.currentCheckpointX;
obj_shadow_ice.y = global.currentCheckpointY;

obj_shadow_fire.x = global.currentCheckpointX;
obj_shadow_fire.y = global.currentCheckpointY;*/

room_restart();

obj_player_ice.image_xscale = 0.05;
obj_player_ice.image_yscale = 0.05;

obj_player_fire.image_xscale = 0.05;
obj_player_fire.image_yscale = 0.05;

obj_shadow_ice.image_xscale = 1;
obj_shadow_ice.image_yscale = 1;

obj_shadow_fire.image_xscale = 1;
obj_shadow_fire.image_yscale = 1;

obj_player_ice.bJumpUp = 0;
obj_player_fire.bJumpUp = 0;

obj_player_ice.depth = 0;
obj_player_fire.depth = 0;
obj_shadow_ice.depth = 150;
obj_shadow_fire.depth = 150;

//obj_gear.visible = true;
