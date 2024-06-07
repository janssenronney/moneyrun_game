var _touch_x = device_mouse_x(0); // Posição x do toque
var _touch_y = device_mouse_y(0); // Posição y do toque

// Verificar se o toque ocorreu no botão de Música
if (point_in_rectangle(_touch_x, _touch_y, obj_button_music.x, obj_button_music.y, obj_button_music.x + sprite_width, obj_button_music.y + sprite_height)) {
    show_debug_message("Botão de Música clicado");
	global.music_enabled = !global.music_enabled;
    set_music(global.music_enabled);
}