// Define a fonte de desenho como a fonte normal
draw_set_font(fnt_normal);

// Verifica se o personagem está morto
if global.morto == true {
    // Se o personagem estiver morto, configura os parâmetros de desenho para exibir a tela de "Game Over"
    
    // Define a fonte de desenho como a fonte normal (pode ser desnecessário, já que já foi definida acima)
    draw_set_font(fnt_normal);
    
    // Configura a alinhamento horizontal e vertical para centralizar o texto
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // Define a cor do texto como preto
    draw_set_color(c_black);
    
    // Desenha o texto "Game Over" no centro da tela
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 30, "Game Over");
    
    // Cria um botão de reinício no centro da tela
    create_button(display_get_gui_width()/2, display_get_gui_height()/2, spr_restart);
    
    // Restaura o alinhamento horizontal e vertical para os valores padrão
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
