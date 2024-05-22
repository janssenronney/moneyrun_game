if global.morto == false{
    cima = keyboard_check_pressed(vk_space); //verifica se a tecla de espaço foi pressionada
    
    if !place_meeting(x, y + 1, obj_bloco){ //verifica se não há colisão com um objeto de bloco abaixo do personagem		
        v_velocidade += gravidade; //aplica a gravidade aumentando a velocidade vertical
        
        if v_velocidade > 0{ //verifica se o personagem está caindo
            caindo = true;
        }
		
    }else{ //se houver colisão com um objeto de bloco abaixo do personagem
		if cima{ //verifica se a tecla de espaço está pressionada
            v_velocidade = pulo; //splica um impulso vertical para cima (salto)
            audio_play_sound(snd_jump, 1, false); //toca um som de pulo
        }
    }
    
    var _inst = instance_place(x, y + v_velocidade, obj_bloco); //verifica se há colisão com um objeto de bloco na próxima posição vertical
    
	if _inst{ //enquanto não houver colisão com um objeto de bloco na próxima posição vertical
        while !instance_place(x, y + sign(v_velocidade), obj_bloco){
            y += sign(v_velocidade); //move o personagem verticalmente
        }
        //reseta a flag de "caindo" e a velocidade vertical
        caindo = false;
        v_velocidade = 0;
    }

    y += v_velocidade; //move o personagem verticalmente de acordo com a velocidade vertical

    if place_meeting(x, y, obj_obstaculo) and global.morto == false{ //verifica se há colisão com um objeto de obstáculo
        global.morto = true; //define o personagem como morto
        sprite_index = spr_player_dead; //altera o sprite do personagem para o sprite de morto
        audio_play_sound(snd_collision, 1, false); //toca um som de colisão
    }
}