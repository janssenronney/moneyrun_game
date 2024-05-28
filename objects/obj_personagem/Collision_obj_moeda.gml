with(other) {
	
    instance_destroy();
	
}

if global.powerup_multiplicador == false{
	global.moeda += 1;
	audio_play_sound(snd_coin, 1, false);

}else{
	global.moeda += 10;
	audio_play_sound(snd_coin, 1, false);
	instance_create_layer(display_get_gui_width() / 2, display_get_gui_height() / 2, "Instances", obj_texto_tela);
}
