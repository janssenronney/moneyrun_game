function create_button(x, y, _sprite, _action) {
    var _x1 = x - sprite_get_width(_sprite) / 2;
    var _y1 = y - sprite_get_height(_sprite) / 2;
    var _x2 = x + sprite_get_width(_sprite) / 2;
    var _y2 = y + sprite_get_height(_sprite) / 2;
	    
    if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _x1, _y1, _x2, _y2)) {
		if (room == rm_menu){
			draw_sprite(spr_contorno, 0, x, y);
		}		
		
        if (mouse_check_button_pressed(mb_left)) {
            _action();
        }
    }
    
    draw_sprite_ext(_sprite, 0, x, y, 1, 1, 0, c_white, 1);
}
	
function create_button_devices(x, y, _sprite, _action) {
    var _x1 = x - sprite_get_width(_sprite) / 2;
    var _y1 = y - sprite_get_height(_sprite) / 2;
    var _x2 = x + sprite_get_width(_sprite) / 2;
    var _y2 = y + sprite_get_height(_sprite) / 2;

    // Desenhe o botão
    draw_sprite_ext(_sprite, 0, x, y, 1, 1, 0, c_white, 1);
    
    // Verificação de mouse e toques
    for (var _i = 0; _i < 5; _i++) { // Verificar até 5 toques simultâneos
        var _touch_x = device_mouse_x_to_gui(_i);
        var _touch_y = device_mouse_y_to_gui(_i);

        if (point_in_rectangle(_touch_x, _touch_y, _x1, _y1, _x2, _y2)) {
            if (room == rm_menu) {
                draw_sprite(spr_contorno, 0, x, y);
				
				
            }
            
            if (device_mouse_check_button_pressed(_i, mb_left)) {
				audio_play_sound(snd_selection, 1, false);
                _action();
                break; // Para evitar múltiplos acionamentos simultâneos
            }
        }
    }
}

function create_button_game_devices(x, y, _panel, _sprite, _action) { 
    var _x1 = x - sprite_get_width(_sprite) / 2;
    var _y1 = y - sprite_get_height(_sprite) / 2;
    var _x2 = x + sprite_get_width(_sprite) / 2;
    var _y2 = y + sprite_get_height(_sprite) / 2;
    
    // Verificação de mouse e toques
    for (var _i = 0; _i < 5; _i++) { // Verificar até 5 toques simultâneos
        var _touch_x = device_mouse_x_to_gui(_i);
        var _touch_y = device_mouse_y_to_gui(_i);

        if (point_in_rectangle(_touch_x, _touch_y, _x1, _y1, _x2, _y2)) {
            if (room == rm_menu) {
                draw_sprite(spr_contorno, 0, x, y);
            }
            
            if (device_mouse_check_button_pressed(_i, mb_left)) {
                _action();
                break; // Para evitar múltiplos acionamentos simultâneos
            }
        }
    }

    // Desenhar o painel e o botão
    draw_sprite(_panel, 0, x - 30, y - 10);
    draw_sprite_ext(_sprite, 0, x, y, 1, 1, 0, c_white, 1);
}


function button_play_action() {
    room_goto(rm_jogo);
}

function button_config_action() {
    room_goto(rm_config);
}

function button_credits_action() {
    room_goto(rm_credits);
}

function button_back_action(){
	room_goto(rm_menu);

}

function button_close_action(){
	room_goto(rm_menu);
}

draw_self();
