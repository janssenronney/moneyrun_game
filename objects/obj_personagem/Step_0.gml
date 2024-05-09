if global.morto == false{
	//verifica se a tecla de espaço foi pressionada
    cima = keyboard_check_pressed(vk_space);
    //verifica se não há colisão com um objeto de bloco abaixo do personagem
    if !place_meeting(x, y + 1, obj_bloco){
		//aplica a gravidade aumentando a velocidade vertical
        v_velocidade += gravidade;
        //verifica se o personagem está caindo
        if v_velocidade > 0{
            caindo = true;
        }
	//se houver colisão com um objeto de bloco abaixo do personagem
    }else{
        //verifica se a tecla de espaço está pressionada
		if cima{
			//splica um impulso vertical para cima (salto)
            v_velocidade = pulo;
            //toca um som de pulo
            //audio_play_sound(snd_pulo, 1, false);
        }
    }

    //verifica se há colisão com um objeto de bloco na próxima posição vertical
    var _inst = instance_place(x, y + v_velocidade, obj_bloco);
    if _inst{
        //enquanto não houver colisão com um objeto de bloco na próxima posição vertical
        while !instance_place(x, y + sign(v_velocidade), obj_bloco){
            y += sign(v_velocidade); //move o personagem verticalmente
        }
        //reseta a flag de "caindo" e a velocidade vertical
        caindo = false;
        v_velocidade = 0;
    }

    //move o personagem verticalmente de acordo com a velocidade vertical
    y += v_velocidade;

    //verifica se há colisão com um objeto de obstáculo
    if place_meeting(x, y, obj_obstaculo) and global.morto == false{
        //define o personagem como morto
        global.morto = true;
        //altera o sprite do personagem para o sprite de morto
        sprite_index = spr_personagem_morto;
        // Toca um som de colisão
        // audio_play_sound(snd_colisao, 1, false);
    }
}