/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x -= abs(global.velocidade);

//destruir obstaculos após a sua exibição
if x <= -100{
	instance_destroy();
}