// Verifica se o personagem não está morto
if global.morto == false {
    // Se o personagem não está morto, cria um objeto obstáculo na sala
    // O objeto será criado fora da tela, à direita, na coordenada y 140 e na camada "Instances"
    var _inst = instance_create_layer(room_width, 140, "Instances", obj_obstaculo);
    
    // Define o índice da imagem do objeto obstáculo como um valor aleatório entre 0 e 4
    _inst.image_index = irandom(4);

    // Configura o alarme 0 para ser ativado após um intervalo de tempo aleatório,
    // com base na velocidade da sala, para criar um novo obstáculo
    alarm[0] = irandom_range(room_speed * 1.4, room_speed * 1.8);
}
