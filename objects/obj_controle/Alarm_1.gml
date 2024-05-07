/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if global.morto == false{
	var _yy = irandom_range(20, 70);
	instance_create_layer(room_width, _yy, "Instances", obj_nuvem);

	alarm[1] = irandom_range(room_speed/3, room_speed * 1.5)
}