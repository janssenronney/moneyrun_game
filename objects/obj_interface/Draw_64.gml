// Define a fonte de desenho como a fonte normal
draw_set_font(fnt_interface);

// Define a posição do texto "Moedas"
var text_x = 270;
var text_y = 10;

// Desenha o texto "Moedas"
draw_text(text_x, text_y, "Moedas: " + string(global.moeda));

// Se você deseja substituir a palavra "Moedas" por um sprite:
// Substitua a linha acima por este código:
// Desenha o sprite no lugar do texto "Moedas"
//draw_sprite(spr_moeda, 0, text_x, text_y);
