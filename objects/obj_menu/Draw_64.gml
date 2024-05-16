draw_set_font(fnt_menu);
draw_set_color(c_white);
var gui_largura = display_get_gui_width()
var gui_altura = display_get_gui_height()
x1 = gui_largura/2
y1 = (gui_altura/2) - 80

//funcao para escrever os nomes na tela
for(var i = 0; i < op_max; i++){
	draw_set_halign(fa_center);
	
	if (index == i) {
		draw_set_color(c_yellow);
	}else{
		draw_set_color(c_white);
	}
	
	
	draw_text(x1, y1 + (40*i), opcoes[i]);

}

draw_set_font(-1);