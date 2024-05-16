	draw_sprite_ext(spr_pontuacao, 0, 1, 1, 2, 2, 0, c_black, 1);
	
	draw_set_color(c_black);
	draw_set_font(fnt_pontuacao);
	draw_text(70, 30, "Moedas: " + string(global.moeda));
	draw_text(70, 10, "Distancia: " + string(floor(global.distancia))+ " M");
