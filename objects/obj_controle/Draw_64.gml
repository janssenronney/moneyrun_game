draw_sprite(spr_player_avatar, 0, 1, 1)
draw_set_font(fnt_pontuacao);
draw_set_halign(fa_left); //configura o alinhamento horizontal
draw_set_valign(fa_top);  //configura o alinhamento vertical
draw_set_color(c_black);
draw_text(55, 15, string(floor(global.distancia))+"M");
draw_text(55, 35, string(global.moeda));

if global.morto == true {
    draw_set_font(fnt_game_over); 
    draw_set_halign(fa_center); //configura o alinhamento horizontal
    draw_set_valign(fa_middle);  //configura o alinhamento vertical
    draw_set_color(c_black); //define a cor do texto
    
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 110, "Game Over"); //desenha o texto no centro da tela
    	
	draw_set_font(fnt_pontuacao);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 80, "Pontuação atual: ");
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 60, "Melhor pontuação: ");
	
	create_button(display_get_gui_width() / 2 - 90, display_get_gui_height() / 2, spr_home, button_close_action);
	create_button(display_get_gui_width() / 2 + 90, display_get_gui_height() / 2, spr_restart, button_play_action);
	
}