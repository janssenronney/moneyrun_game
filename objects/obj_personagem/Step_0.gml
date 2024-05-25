if (global.morto == false) {
    // Verificação de toques na tela
    var _toque = false;
    for (var _i = 0; _i < 5; _i++) {
        if (device_mouse_check_button_pressed(_i, mb_left)) {
            _toque = true;
            break; // Para evitar múltiplas detecções
        }
    }

    cima = keyboard_check_pressed(vk_space) || _toque; // verifica se a tecla de espaço foi pressionada ou se houve um toque

    if (!place_meeting(x, y + 1, obj_bloco)) { // verifica se não há colisão com um objeto de bloco abaixo do personagem
        v_velocidade += gravidade; // aplica a gravidade aumentando a velocidade vertical

        if (v_velocidade > 0) { // verifica se o personagem está caindo
            caindo = true;
        }
    } else { // se houver colisão com um objeto de bloco abaixo do personagem
        if (cima) { // verifica se a tecla de espaço está pressionada ou se houve um toque
            v_velocidade = pulo; // aplica um impulso vertical para cima (salto)
            audio_play_sound(snd_jump, 1, false); // toca um som de pulo
        } else {
            v_velocidade = 0; // reseta a velocidade vertical ao tocar o chão sem pular
        }
    }

    var _inst = instance_place(x, y + v_velocidade, obj_bloco); // verifica se há colisão com um objeto de bloco na próxima posição vertical

    if (_inst) { // se houver colisão
        while (!place_meeting(x, y + sign(v_velocidade), obj_bloco)) {
            y += sign(v_velocidade); // move o personagem verticalmente até a colisão
        }
        // reseta a flag de "caindo" e a velocidade vertical
        caindo = false;
        v_velocidade = 0;
    } else {
        y += v_velocidade; // move o personagem verticalmente de acordo com a velocidade vertical
    }

    if (place_meeting(x, y, obj_obstaculo) && !global.morto) { // verifica se há colisão com um objeto de obstáculo
        global.morto = true; // define o personagem como morto
        sprite_index = spr_player_dead; // altera o sprite do personagem para o sprite de morto
        audio_play_sound(snd_collision, 1, false); // toca um som de colisão
    }
}
