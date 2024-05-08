// Verifica se o personagem não está morto
if global.morto == false {
    // Se o personagem não está morto, diminui a velocidade global em 1/600 (provavelmente para simular um desaceleramento)
    global.velocidade -= 1/600;
    
    // Configura a velocidade horizontal da camada "Background" para a velocidade global
    layer_hspeed("Background", global.velocidade);
} else {
    // Se o personagem está morto, define a velocidade global como 0
    global.velocidade = 0;
    
    // Configura a velocidade horizontal da camada "Background" como 0 (parando o movimento)
    layer_hspeed("Background", 0);
}
