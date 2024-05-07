/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_font(fnt_normal);
if global.morto == true {
    draw_set_font(fnt_normal);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 30, "Game Over");
    create_button(display_get_gui_width()/2, display_get_gui_height()/2, spr_restart);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
