if global.morto == true {
     
    draw_set_font(fnt_restart); 
    draw_set_halign(fa_center); //configura o alinhamento horizontal
    draw_set_valign(fa_middle);  //configura o alinhamento vertical
    draw_set_color(c_black); //define a cor do texto
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 30, "Game Over"); //desenha o texto no centro da tela
    create_button(display_get_gui_width()/2, display_get_gui_height()/2, spr_restart); //cria um botão de reinício no centro da tela
    draw_set_halign(fa_left); //restaura o alinhamento horizontal para os valores padrão
    draw_set_valign(fa_top); //restaura o alinhamento vertical para os valores padrão
	
}
