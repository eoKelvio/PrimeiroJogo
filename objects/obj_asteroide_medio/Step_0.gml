/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
move_wrap(true,true,0);
image_angle += rotacao;


//Fator de destruição do Asteroide
if vida <= 0 {
	
	global.pont += 35;
	audio_play_sound(snd_explosao, 1, false);
	
	repeat(3){
		instance_create_layer(x,y,"Instances",obj_asteroide_pequeno);	
	}
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_detrito_asteroide);	
	}
	instance_destroy();	
}

