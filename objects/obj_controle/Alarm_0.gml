/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.morto == false{
	//criar o objeto obstaculo na room
	var _inst = instance_create_layer(room_width, 140, "Instances", obj_obstaculo);
	_inst.image_index = irandom(4)

	alarm[0] = irandom_range(room_speed * 1.4, room_speed * 1.8);
}