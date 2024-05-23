if (room == rm_jogo) {
	if (audio_is_playing(snd_menu)) {
	    audio_stop_sound(snd_menu);
	}
	if (!audio_is_playing(snd_game)) {
	    audio_play_sound(snd_game, 1, true);
	}
} else {
	if (audio_is_playing(snd_game)) {
	    audio_stop_sound(snd_game);
	}
	
	if (!audio_is_playing(snd_menu)) {
	    audio_play_sound(snd_menu, 1, true);
	}
}