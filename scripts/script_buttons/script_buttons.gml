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

// Variável global para armazenar o id do último botão sobre o qual o mouse estava
global.active_button_id = noone;

function create_button_sound(x, y, _sprite, _action, _hover_sound, _id) {
    var _x1 = x - sprite_get_width(_sprite) / 2;
    var _y1 = y - sprite_get_height(_sprite) / 2;
    var _x2 = x + sprite_get_width(_sprite) / 2;
    var _y2 = y + sprite_get_height(_sprite) / 2;
    
    if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _x1, _y1, _x2, _y2)) {
        if (room == rm_menu) {
            draw_sprite(spr_contorno, 0, x, y);
        }        
        
        // Verifica se o mouse está sobre o botão atual e se não foi tocado anteriormente
        if (global.active_button_id != _id) {
            audio_play_sound(_hover_sound, 1, false);
            global.active_button_id = _id; // Marca este botão como ativo
        }

        if (mouse_check_button_pressed(mb_left)) {
            _action();
        }
    } else {
        // Se o mouse não estiver sobre este botão, reseta o active_button_id se ele pertencer a este botão
        if (global.active_button_id == _id) {
            global.active_button_id = noone;
        }
    }
    
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
