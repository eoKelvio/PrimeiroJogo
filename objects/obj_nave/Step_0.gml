/// @description Funcionalidades Nave

if keyboard_check(vk_up){
	sprite_index = spr_nave_movendo;
	speed = velocidade;
}else if keyboard_check(vk_down){
	sprite_index = spr_nave_movendo;
	speed = -velocidade;
}else{
	sprite_index = spr_nave_parada;
	speed = lerp(speed,0,0.05);	
}

if keyboard_check(vk_right){
	direcao = -5;
}else if keyboard_check(vk_left){
	direcao = 5;
}else{
	direcao = lerp(direcao,0,0.10);
}
	
	
if keyboard_check_pressed(vk_space){
	audio_play_sound(snd_projetil, 1, false);
	var tiro  = instance_create_layer(x,y,"Instances",obj_projetil);
	tiro.speed = 6;
	tiro.direction = direction;
	tiro.image_angle = direction;
	tiro.dano = dano_nave;
}

direction += direcao
image_angle = direction;
move_wrap(true,true,0);

if alarm[0] > 0{
	if image_alpha <= 0{
		hit = 0.05;	
	}else if image_alpha >= 1{
		hit = -0.05;	
	}
	image_alpha += hit;
}else{
image_alpha =1;	
}

if vida <= 0{
	game_restart();	
}


