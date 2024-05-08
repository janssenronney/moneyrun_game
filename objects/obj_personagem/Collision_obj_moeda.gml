// Este bloco de código é executado quando o objeto atual colide com outro objeto no jogo
with(other) {
    // Dentro deste bloco, 'other' se refere ao objeto com o qual o objeto atual colidiu
    
    // Destruir o objeto com o qual ocorreu a colisão, neste caso, a moeda
    instance_destroy();
}

global.moeda += 1;