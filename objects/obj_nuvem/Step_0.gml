
// Verifica se o personagem não está morto
if global.morto == false {
    // Se o personagem não está morto, move o objeto atual para a esquerda com metade da velocidade global
    x -= abs(global.velocidade)/2;
}

// Verifica se a coordenada x do objeto atual é menor que -100
if x < -100 {
    // Se a coordenada x for menor que -100, destrói o objeto atual
    instance_destroy();
}
