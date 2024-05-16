//controle da movimentação de tela
if global.morto == false { //inicio da movimentação
    
    global.velocidade -= 1/600;
	global.distancia += 1/6;
    
    layer_hspeed("Background", global.velocidade); //velocidade horizontal
	
} else { //parada da movimentação
    global.velocidade = 0;
    layer_hspeed("Background", 0);
}

//powerups
if global.morto == false{
	//powerup ímã
	if global.distancia >= 300 && !global.powerup_ima_criado{ //criar powerup ímã
		var _yy = irandom_range(30, 90);
		instance_create_layer(room_width, _yy, "Instances", obj_powerup_ima);
	    global.powerup_ima_criado = true;
		
	}
	//controle do powerup imã
	if global.powerup_ima == true {
	    if global.tempo_powerup_ima > 0 {
			global.tempo_powerup_ima -= 1;
	    } else {
			global.powerup_ima = false;
			global.tempo_powerup_ima = 0;
	    }
	}
	//powerup time
	if global.distancia >= 500 && !global.powerup_time_criado{ //criar powerup time
		var _xx = irandom_range(40, 80);
		instance_create_layer(room_width, _xx, "Instances", obj_powerup_time);
		global.powerup_time_criado = true;
	}
	
	
	
}