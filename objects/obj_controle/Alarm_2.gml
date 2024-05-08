// Verifica se o personagem não está morto
if global.morto == false {
    // Se o personagem não está morto, cria um objeto moeda na sala
    // O objeto será criado fora da tela, à direita, com uma posição x aleatória entre 0 e 50
    var _xx = irandom_range(30, 90);
    instance_create_layer(room_width, _xx, "Instances", obj_moeda);

    // Configura o alarme 2 para ser ativado após um intervalo de tempo aleatório,
    // com base na velocidade da sala, para criar uma nova moeda
    alarm[2] = irandom_range(room_speed/3, room_speed * 1.5);
}

