/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.morto == false{
	//movimentação
	cima = keyboard_check_pressed(vk_space);

	//efeito da gravidade fora do chão
	if !place_meeting(x, y + 1, obj_bloco){
		//cair
		v_velocidade += gravidade;
	
		if v_velocidade > 0{
			caindo = true;
		}
	}else{
		//pular
		if cima{
			v_velocidade = pulo;
			//audio_play_sound(snd_pulo, 1, false);
			//sprite_index = spr_personagem_pulo
		}
	}

	//colisão com o chão
	var _inst = instance_place(x, y + v_velocidade, obj_bloco);
	if _inst{
		while !instance_place(x, y + sign(v_velocidade), obj_bloco){
			y += sign(v_velocidade)
		}
	
		caindo = false;
		v_velocidade = 0;
	}

	y += v_velocidade;

	//colisão com o obstáculo
	if place_meeting(x, y, obj_obstaculo) and global.morto == false{
		global.morto = true;
		sprite_index = spr_personagem_morto;
		//audio_play_sound(snd_colisao, 1, false);
	}
}