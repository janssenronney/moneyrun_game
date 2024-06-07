// Controle da movimentação de tela
if global.morto == false { // início da movimentação
    global.velocidade -= 1 / 600;
    global.distancia += 1 / 6;
    
    layer_hspeed("Background", global.velocidade); // velocidade horizontal

    // Controle de Power-ups
    var _yy, _xx, _zz;

    // Powerup ímã
    var _dist1 = irandom_range(100, 200);
    if global.distancia >= _dist1 && !global.powerup_ima_criado {
        _yy = irandom_range(40, 80);
		instance_create_layer(room_width, _yy, "Instances", obj_powerup_ima);
        
		global.powerup_ima_criado = true;
    }
    if global.powerup_ima {
        if global.tempo_powerup_ima > 0 {
            global.tempo_powerup_ima -= 1;
        } else {
            global.powerup_ima = false;
            global.tempo_powerup_ima = 0;
        }
    }

    // Powerup tempo
    var _dist2 = irandom_range(300, 400);
    if global.distancia >= _dist2 && !global.powerup_tempo_criado {
        _xx = irandom_range(40, 80);
        instance_create_layer(room_width, _xx, "Instances", obj_powerup_tempo);
        global.powerup_tempo_criado = true;
    }

    // Powerup multiplicador
    var _dist3 = irandom_range(200, 300);
    if global.distancia >= _dist3 && !global.powerup_multiplicador_criado {
        _zz = irandom_range(40, 80);
        instance_create_layer(room_width, _zz, "Instances", obj_powerup_multiplicador);
        global.powerup_multiplicador_criado = true;
    }
    if global.powerup_multiplicador {
        if global.tempo_powerup_multiplicador > 0 {
            global.tempo_powerup_multiplicador -= 1;
        } else {
            global.powerup_multiplicador = false;
            global.tempo_powerup_multiplicador = 0;
        }
    }
	
	// Atualize a pontuação atual
    global.pontuacao_atual += 1 / 6;  // Ajuste o valor conforme necessário

} else { // parada da movimentação
    global.velocidade = 0;
    layer_hspeed("Background", 0);
	
	// Verifica se a pontuação atual é maior que a melhor pontuação armazenada
    if (global.pontuacao_atual > global.melhor_pontuacao) {
        global.melhor_pontuacao = global.pontuacao_atual;

        // Salva a nova melhor pontuação
        var _file = file_text_open_write("melhor_pontuacao.sav");
        file_text_write_string(_file, string(global.melhor_pontuacao));
        file_text_close(_file);
    }
}

if (global.moeda >= 30 && !global.background_alterado) {
    layer_background_sprite(layer_background_get_id("Background"), spr_background_2);
    global.background_alterado = true;
}
