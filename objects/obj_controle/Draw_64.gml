if global.morto == true {
     
    draw_set_font(fnt_restart); 
    //configura o alinhamento horizontal e vertical para centralizar o texto
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    //define a cor do texto
    draw_set_color(c_black);
    //desenha o texto no centro da tela
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 30, "Game Over");
    //cria um botão de reinício no centro da tela
    create_button(display_get_gui_width()/2, display_get_gui_height()/2, spr_restart);
    //restaura o alinhamento horizontal e vertical para os valores padrão
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
