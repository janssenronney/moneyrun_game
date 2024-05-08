// Define a variável global 'morto' como falso, indicando que o personagem não está morto.
global.morto = false;

// Define a direção da movimentação da tela como para a esquerda com uma velocidade de -2 pixels por quadro.
global.velocidade = -2;

// Configura três alarmes para serem ativados após 1 passo do jogo (um quadro).
alarm[0] = 1;
alarm[1] = 1;
alarm[2] = 1;

// Inicializa o botão do jogo. Esta função provavelmente configura as variáveis necessárias para o funcionamento do botão.
init_button();
