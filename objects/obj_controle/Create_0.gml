// Inicialização de variáveis globais
global.morto = false;                   // Estado do jogador (vivo/morto)
global.velocidade = -2;                 // Velocidade inicial
global.moeda = 0;                       // Contador de moedas coletadas
global.distancia = 0;                   // Distância percorrida
global.pontuacao_atual = 0;				// Pontuação atual do jogador
global.melhor_pontuacao = 0;			// Melhor pontuação do jogador

// Configuração do powerup "ímã"
global.powerup_ima_criado = false;      // Verifica se o powerup de ímã foi criado
global.powerup_ima = false;             // Estado do powerup de ímã (ativo/inativo)
global.tempo_powerup_ima = 0;           // Tempo restante do powerup de ímã

// Configuração do powerup "tempo"
global.powerup_tempo = false;           // Estado do powerup de tempo (ativo/inativo)
global.powerup_tempo_criado = false;    // Verifica se o powerup de tempo foi criado

// Configuração do powerup "multiplicador"
global.powerup_multiplicador_criado = false; // Verifica se o powerup de multiplicador foi criado
global.powerup_multiplicador = false;        // Estado do powerup de multiplicador (ativo/inativo)
global.tempo_powerup_multiplicador = 0;      // Tempo restante do powerup de multiplicador
global.colisao_moeda = false;

// Configuração dos alarmes
alarm[0] = 1; // Alarme para criação de obstáculos
alarm[2] = 1; // Alarme para criação de moedas
alarm[1] = 1;

// Carregar a melhor pontuação armazenada, se disponível
if (file_exists("melhor_pontuacao.sav")) {
    var _file = file_text_open_read("melhor_pontuacao.sav");
    global.melhor_pontuacao = real(file_text_read_string(_file));
    file_text_close(_file);
}