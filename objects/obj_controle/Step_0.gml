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
	var _dist1 = irandom_range(100, 200);
	if global.distancia >= _dist1 && !global.powerup_ima_criado{ //criar powerup ímã
		var _yy = irandom_range(40, 80);
		instance_create_layer(room_width, _yy, "Instances", obj_powerup_ima);
	    global.powerup_ima_criado = true;
	}
	//controle do powerup ímã
	if global.powerup_ima == true {
	    if global.tempo_powerup_ima > 0 {
			global.tempo_powerup_ima -= 1;
	    } else {
			global.powerup_ima = false;
			global.tempo_powerup_ima = 0;
	    }
	}
	
	//powerup tempo
	var _dist2 = irandom_range(300, 500);
	if global.distancia >= 500 && !global.powerup_tempo_criado{ //criar powerup tempo
		var _xx = irandom_range(40, 80);
		instance_create_layer(room_width, _xx, "Instances", obj_powerup_tempo);
		global.powerup_tempo_criado = true;
	}
	
	//powerup multiplicador
	var _dist3 = irandom_range(50, 100);
	if global.distancia >= _dist3 && !global.powerup_multiplicador_criado{ //criar powerup multiplicador
		var _zz = irandom_range(40, 80);
		instance_create_layer(room_width, _zz, "Instances", obj_powerup_multiplicador);
		global.powerup_multiplicador_criado = true;
	}
	//controle do powerup multiplicador
	if global.powerup_multiplicador == true {
	    if global.tempo_powerup_multiplicador > 0 {
			global.tempo_powerup_multiplicador -= 1;
	    } else {
			global.powerup_multiplicador = false;
			global.tempo_powerup_multiplicador = 0;
	    }
	}
	
	
}