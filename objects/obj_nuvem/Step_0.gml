/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.morto == false{
	x -= abs(global.velocidade)/2;
}

if x < -100{
	instance_destroy();
}