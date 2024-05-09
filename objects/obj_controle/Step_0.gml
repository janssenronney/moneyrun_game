if global.morto == false { //inicio da movimentação
    
    global.velocidade -= 1/600;
	global.distancia += 1/6;
    
    layer_hspeed("Background", global.velocidade); //velocidade horizontal
	
} else { //parada da movimentação
    global.velocidade = 0;
    layer_hspeed("Background", 0);
}
