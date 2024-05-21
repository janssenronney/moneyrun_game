if distance_to_object(obj_personagem) < 100 and global.powerup_ima == true{
	x -= abs(global.velocidade*3);
	y = lerp(y, obj_personagem.y, 0.5);
} else{
	x -= abs(global.velocidade); //move o objeto para a esquerda na velocidade global

}
