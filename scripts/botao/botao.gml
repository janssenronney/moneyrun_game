// Variáveis globais para armazenar a transparência e escala do botão
var balpha = 1; // Transparência do botão
var bscale = 1; // Escala do botão

// Função para inicializar as variáveis do botão
function init_button(){
    balpha = 1; // Define a transparência de volta para opaco
    bscale = 1; // Define a escala de volta para o tamanho original
}

// Função para criar o botão
function create_button(x, y, sprite){
    // Calcula as coordenadas dos cantos do botão com base na posição e tamanho da sprite
    var _x1 = x - sprite_get_width(sprite)/2;
    var _y1 = y - sprite_get_height(sprite)/2;
    var _x2 = x + sprite_get_width(sprite)/2;
    var _y2 = y + sprite_get_height(sprite)/2;
    
    // Verifica se o mouse está sobre o botão
    if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _x1, _y1, _x2, _y2){
        balpha = 1; // Define a transparência como opaco
        bscale = lerp(bscale, 1.2, 0.05); // Altera a escala do botão para 1.2
        
        // Se o botão esquerdo do mouse for pressionado, reinicia a sala
        if mouse_check_button_pressed(mb_left){
            room_restart();
        }
    }else{
        balpha = .6; // Define a transparência para um valor um pouco menor para dar uma sensação de hover
        bscale = lerp(bscale, 1, 0.05); // Altera a escala de volta para 1
    }
    
    // Desenha a sprite do botão com a transparência e escala calculadas
    draw_sprite_ext(sprite, 0, x, y, bscale, bscale, 0, c_white, balpha);
}
