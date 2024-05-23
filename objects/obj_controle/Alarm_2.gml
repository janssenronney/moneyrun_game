// Verifica se o jogador não está morto para continuar criando moedas
if global.morto == false {
    // Define uma posição vertical aleatória para a moeda
    var _yy = irandom_range(40, 80);
    
    // Cria uma moeda na camada "Instances" na posição (room_width, _yy)
    instance_create_layer(room_width, _yy, "Instances", obj_moeda);

    // Redefine o alarme para criar a próxima moeda após um intervalo aleatório
    alarm[2] = irandom_range(room_speed / 3, room_speed * 1.5);
}
