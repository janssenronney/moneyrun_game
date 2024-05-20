draw_sprite_ext(spr_avatar_personagem, 0, 1, 1, 2, 2, 0, c_black, 1);
draw_set_font(fnt_pontuacao);
draw_set_halign(fa_left); //configura o alinhamento horizontal
draw_set_valign(fa_top);  //configura o alinhamento vertical
draw_set_color(c_black);
draw_text(70, 30, "Moedas: " + string(global.moeda));
draw_text(70, 10, "Distância: " + string(floor(global.distancia))+ " M");

if global.morto == true {
    //escrever game over 
    draw_set_font(fnt_restart); 
    draw_set_halign(fa_center); //configura o alinhamento horizontal
    draw_set_valign(fa_middle);  //configura o alinhamento vertical
    draw_set_color(c_black); //define a cor do texto
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 30, "Game Over"); //desenha o texto no centro da tela
    
	
	create_button(600, 20, spr_back, button_close_action);

	
}
