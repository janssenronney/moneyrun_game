/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.morto == false{
	//aumento da velocidade
	global.velocidade -= 1/600;

	//velocidade do background
	layer_hspeed("Background", global.velocidade);
}else{
	global.velocidade = 0;
	layer_hspeed("Background", 0);
}