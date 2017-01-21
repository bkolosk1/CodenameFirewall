//Wave generator
wave_speed = 10;

wave = instance_create(obj_player.x,obj_player.y,obj_wave);
wave.direction = image_angle+90;
wave.image_angle = image_angle+180;
wave.speed = wave_speed;
