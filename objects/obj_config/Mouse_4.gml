// Verificar se o clique foi no botão de SFX
if (mouse_x > 50 && mouse_x < 200 && mouse_y > 120 && mouse_y < 150) {
    global.sfx_enabled = !global.sfx_enabled; // Alternar o estado
    set_sfx(global.sfx_enabled); // Atualizar o estado de SFX
}

// Verificar se o clique foi no botão de Música
if (mouse_x > 50 && mouse_x < 200 && mouse_y > 220 && mouse_y < 250) {
    global.music_enabled = !global.music_enabled; // Alternar o estado
    set_musica(global.music_enabled); // Atualizar o estado da Música
}
