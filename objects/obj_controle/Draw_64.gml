/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(fnt_basica);	
var _c = make_color_rgb(131,68,87);
var _largura = display_get_width();
var _altura = display_get_height();
if room == rm_menu{
	if pisca <= 0 {
		pisca_add = 0.05;
	}else if pisca >= 1 {
		pisca_add -= 0.05;	
	}
	
	pisca += pisca_add;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_color(_largura/2,_altura/3,"Neste jogo voce deve desviar dos asteroides e destrui-los para ganhar pontos, para vencer, chegue em 1000 pontos. Boa sorte!",30,500, c_white, c_white, c_white, c_white,1);
	draw_text_color(_largura/2, _altura - _altura/3,"Aperte 'ESPACO' para comecar",_c,_c,_c,_c,pisca);
	if keyboard_check_pressed(vk_space){
		room_goto(rm_jogo);	
	}
}else if room == rm_jogo{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
draw_text_color(50,20,"vidas: "+string(obj_nave.vida),_c,_c,_c,_c, 1);
draw_text_color(50,50,"Pontuacao: "+string(global.pont),c_white,c_white,c_white,c_white,1);
if global.pont >= 1000 {
	room_goto(rm_final);	
}
}else if room == rm_final{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_color(_largura/2,_altura/2,"Parabens! voce conseguiu atingir 1000 pontos, se quiser jogar novamente, aperte 'R'.",80,900,_c,_c,_c,_c,1);
	if keyboard_check_pressed(ord("R")){
		game_restart();	
	}
}