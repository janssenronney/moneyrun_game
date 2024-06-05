// Verifica se o jogador não está morto para continuar criando obstáculos
if global.morto == false {
    // Cria um obstáculo na camada "Instances" na posição (room_width, 140)
    var _inst = instance_create_layer(room_width, 141, "Instances", obj_obstaculo);
    
    // Define um índice de imagem aleatório para o obstáculo
    _inst.image_index = irandom(5);

    // Redefine o alarme para criar o próximo obstáculo após um intervalo aleatório
    alarm[0] = irandom_range(room_speed * 1.4, room_speed * 1.8);
	
}
