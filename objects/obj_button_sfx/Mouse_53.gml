var _touch_x = device_mouse_x(0); // Posição x do toque
var _touch_y = device_mouse_y(0); // Posição y do toque

// Verificar se o toque ocorreu no botão de SFX
if (point_in_rectangle(_touch_x, _touch_y, obj_button_sfx.x, obj_button_sfx.y, obj_button_sfx.x + sprite_width, obj_button_sfx.y + sprite_height)) {
    show_debug_message("Botão de SFX clicado");
	global.sfx_enabled = !global.sfx_enabled;
    set_sfx(global.sfx_enabled);
}