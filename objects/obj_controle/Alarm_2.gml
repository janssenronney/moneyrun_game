//criar mooedas
if global.morto == false {
	
    var _yy = irandom_range(30, 90);
    
	instance_create_layer(room_width, _yy, "Instances", obj_moeda);

    alarm[2] = irandom_range(room_speed/3, room_speed * 1.5);
}

