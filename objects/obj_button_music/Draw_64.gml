var _center_x = display_get_gui_width() / 2 - 150;
var _center_y = display_get_gui_height() / 2;

if (global.music_enabled) {
    draw_sprite(spr_button_music_on, 0, _center_x, _center_y);
} else {
    draw_sprite(spr_button_music_off, 0, _center_x, _center_y);
}