
if global.morto == false {
	
    x -= abs(global.velocidade)/2; //move o objeto para a esquerda com metade da velocidade global
}

if x < -100 {
    
    instance_destroy();
}
