function set_sfx(_is_enable){
    if (_is_enable){
        global.bus_sfx.gain = 1;
    }else{
        global.bus_sfx.gain = 0;
    }
}

function set_music(_is_enable){
    if (_is_enable){
        global.bus_music.gain = 1;
	}else{
        global.bus_music.gain = 0;
    }
}

function play_sfx(_sound, _loop, _priority){
	audio_play_sound_on(global.emitter_sfx, _sound, _loop, _priority);
}

function play_music(_sound, _loop, _priority){
	audio_play_sound_on(global.emitter_music, _sound, _loop, _priority);
}
