// Verifica se o personagem não está morto
if global.morto == false{

    // Verifica se a tecla de espaço foi pressionada
    cima = keyboard_check_pressed(vk_space);

    // Verifica se não há colisão com um objeto de bloco abaixo do personagem
    if !place_meeting(x, y + 1, obj_bloco){

        // Aplica a gravidade aumentando a velocidade vertical
        v_velocidade += gravidade;

        // Verifica se o personagem está caindo
        if v_velocidade > 0{
            caindo = true;
        }
    }else{
        // Se houver colisão com um objeto de bloco abaixo do personagem

        // Verifica se a tecla de espaço está pressionada
        if cima{
            // Aplica um impulso vertical para cima (salto)
            v_velocidade = pulo;
            // Toca um som de pulo
            // audio_play_sound(snd_pulo, 1, false);
            // Altera o sprite do personagem para o sprite de pulo
        }
    }

    // Verifica se há colisão com um objeto de bloco na próxima posição vertical
    var _inst = instance_place(x, y + v_velocidade, obj_bloco);
    if _inst{
        // Enquanto não houver colisão com um objeto de bloco na próxima posição vertical
        while !instance_place(x, y + sign(v_velocidade), obj_bloco){
            y += sign(v_velocidade); // Move o personagem verticalmente
        }

        // Reseta a flag de "caindo" e a velocidade vertical
        caindo = false;
        v_velocidade = 0;
    }

    // Move o personagem verticalmente de acordo com a velocidade vertical
    y += v_velocidade;

    // Verifica se há colisão com um objeto de obstáculo
    if place_meeting(x, y, obj_obstaculo) and global.morto == false{
        // Define o personagem como morto
        global.morto = true;
        // Altera o sprite do personagem para o sprite de morto
        sprite_index = spr_personagem_morto;
        // Toca um som de colisão
        // audio_play_sound(snd_colisao, 1, false);
    }
}