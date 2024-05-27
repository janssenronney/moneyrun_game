with(other) {
	
    instance_destroy();
	
}

if global.powerup_multiplicador == false{
	global.moeda += 1;
	audio_play_sound(snd_coin, 1, false);

}else{
	global.moeda += 10;
	audio_play_sound(snd_coin, 1, false);
}
