// Subtrai o valor absoluto da variável global 'velocidade' da coordenada x do objeto atual
x -= abs(global.velocidade);

// Verifica se a coordenada x do objeto atual é menor ou igual a -100
if x <= -100 {
    // Se a coordenada x for menor ou igual a -100, destrói o objeto atual
    instance_destroy();
}
