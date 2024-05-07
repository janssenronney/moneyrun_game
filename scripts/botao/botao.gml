// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
var balpha = 1;
var bscale = 1;

function init_button(){
	balpha = 1;
	bscale = 1;
}

function create_button(x, y, sprite){
	var _x1 = x - sprite_get_width(sprite)/2;
	var _y1 = y - sprite_get_height(sprite)/2;
	var _x2 = x + sprite_get_width(sprite)/2;
	var _y2 = y + sprite_get_height(sprite)/2;
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _x1, _y1, _x2, _y2){
		balpha = 1;
		bscale = lerp(bscale, 1.2, 0.05);
		
		if mouse_check_button_pressed(mb_left){
			room_restart();
		}
	}else{
		balpha = .6;
		bscale = lerp(bscale, 1, 0.05);
	}
	
	draw_sprite_ext(sprite, 0, x, y, bscale, bscale, 0, c_white, balpha);
}