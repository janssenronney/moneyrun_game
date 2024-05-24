// Desenha o avatar do jogador
draw_sprite(spr_player_avatar, 0, 1, 1);

// Configurações de desenho para a pontuação e moedas
draw_set_font(fnt_pontuacao);
draw_set_halign(fa_left); // Configura o alinhamento horizontal
draw_set_valign(fa_top);  // Configura o alinhamento vertical
draw_set_color(c_black);  // Define a cor do texto

// Desenha a distância percorrida
draw_text(55, 15, string(floor(global.distancia)) + "M");

// Desenha a quantidade de moedas coletadas
draw_text(55, 35, string(global.moeda));

// Verifica se o jogador está morto para desenhar a tela de "Game Over"
if global.morto {
    // Posições para o texto de "Game Over" e pontuações
    var _center_x = display_get_gui_width() / 2;
    var _center_y = display_get_gui_height() / 2;

    // Configurações de desenho para o texto de "Game Over"
    draw_set_halign(fa_center); // Configura o alinhamento horizontal
    draw_set_valign(fa_middle); // Configura o alinhamento vertical
    draw_set_color(c_black);    // Define a cor do texto

    // Desenha o texto de "Game Over"
    draw_sprite(spr_game_over, 0, _center_x - 150, _center_y - 135)

    // Configurações de desenho para a pontuação
    draw_set_font(fnt_pontuacao);
    draw_set_font(fnt_pontuacao);
	if global.pontuacao_atual >= global.melhor_pontuacao{
		draw_text(_center_x, _center_y - 60, "Novo recorde: " + string(floor(global.pontuacao_atual)));
	}else{
		draw_text(_center_x, _center_y - 60, "Pontuação atual: " + string(floor(global.pontuacao_atual)));
		draw_text(_center_x, _center_y - 40, "Melhor pontuação: " + string(floor(global.melhor_pontuacao)));
	}

    // Cria botões de retorno ao menu inicial e reinício do jogo
	create_button_game(_center_x - 90, _center_y, spr_panel, spr_home, button_close_action);
	create_button_game(_center_x + 90, _center_y, spr_panel, spr_restart, button_play_action);
}
