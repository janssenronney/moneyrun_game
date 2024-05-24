function fade_in_sound(_sound, _duration) {
	audio_play_sound(_sound, 1, true);
    var _target_volume = 1;
    var _initial_volume = audio_sound_get_gain(_sound); // Assumindo que o volume inicial é 0
    var _steps = _duration // Calcula o número de passos baseado na velocidade da sala
    var _step_volume = (_target_volume - _initial_volume) / _steps;
    
    for (var _i = 0; _i <= _steps; _i++) {
        var _current_volume = min(_initial_volume + (_step_volume * _i), 1);
        audio_sound_gain(_sound, _current_volume, 0);
        audio_sound_gain(_sound, _current_volume, 1);
		audio_sound_gain(_sound, _current_volume, 2);
		
    }
}

function fade_out_sound(_sound, _duration) {
    var _target_volume = 0;
    var _initial_volume = audio_sound_get_gain(_sound); // Assumindo que o volume inicial é 1
    var _steps = _duration; // Calcula o número de passos baseado na velocidade da sala
    var _step_volume = (_initial_volume - _target_volume) / _steps;
    
    for (var _i = 0; _i <= _steps; _i++) {
        var _current_volume = max(_initial_volume - (_step_volume * _i), 0);
		audio_sound_gain(_sound, _current_volume, 0);
		audio_sound_gain(_sound, _current_volume, 1);
		audio_sound_gain(_sound, _current_volume, 2);
        	
    }
	
	audio_stop_sound(_sound); // Para o som após o fade out
}