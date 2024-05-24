global.morto = false;
global.game_over_sound_played = false;

if (!audio_is_playing(snd_menu)) {
	audio_play_sound(snd_menu, 1, true);
}