// Verifica se o personagem não está morto
if global.morto == false {
    // Se o personagem não está morto, cria um objeto nuvem na sala
    // O objeto será criado fora da tela, à direita, com uma posição y aleatória entre 20 e 70
    var _yy = irandom_range(20, 70);
    instance_create_layer(room_width, _yy, "Instances", obj_nuvem);

    // Configura o alarme 1 para ser ativado após um intervalo de tempo aleatório,
    // com base na velocidade da sala, para criar uma nova nuvem
    alarm[1] = irandom_range(room_speed/3, room_speed * 1.5);
}
