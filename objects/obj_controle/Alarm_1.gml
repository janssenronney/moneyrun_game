//criar nuvens
if global.morto == false {
	
    var _yy = irandom_range(20, 70);
    
	var _inst = instance_create_layer(room_width, _yy, "Instances", obj_nuvem);
	
	_inst.image_index = irandom(4);

    alarm[1] = irandom_range(room_speed/3, room_speed * 1.5);
}
