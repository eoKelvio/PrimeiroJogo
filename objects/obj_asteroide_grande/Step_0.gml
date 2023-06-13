/// @description Configurações do Asteroide
// Transitar entre as bordas
move_wrap(true,true,0);
image_angle += rotacao;


//Fator de destruição do Asteroide
if vida <= 0 {
	audio_play_sound(snd_explosao, 1, false);
	global.pont += 50;
	
	repeat(3){
		instance_create_layer(x,y,"Instances",obj_asteroide_medio);	
	}
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_detrito_asteroide);	
	}
	instance_destroy();	
}
