/// @description checando sala, hp, gameover

hp_percentage = ((hp/maxHp)*100);


#region juntando dados
//definir arquivo das músicas por fase e obj do boss
if(roomStarted = false){
	if (room = Fase_01){
		level_ost = snd_lvl_1_1;
		level_battle_ost = snd_lvl_1_2;
		boss_obj = obj_boss;
	}
	if (room = Mapa2){
		level_ost = snd_lvl_2_1;
		level_battle_ost = snd_lvl_2_2;
		boss_obj = obj_boss_2;
	}
	if (room = Mapa3){
		level_ost = snd_lvl_3_1;
		level_battle_ost = snd_lvl_3_2;
		boss_obj = obj_boss_3;
	}
	roomStarted = true;
}
#endregion

#region tocando e parando músicas
//iniciando música
if (musicStarted = false){
	alarm[0] = 120;
	musicStarted = true;
}
//iniciando música do boss e parando a outra música
if instance_exists(boss_obj){
	if(musicBoss = false){
		audio_stop_sound(level_ost);
		audio_play_sound_on(ost, level_battle_ost, 1, 0);
		musicBoss = true;
	}
}

#endregion

#region aplicando efeitos sonoros
//efeito LPF caso vida inferior a 60%
if(hp_percentage <= 60){
	lowpass.bypass = false;
	lowpass.cutoff = 250*hp_percentage;
}

//efeito de pitch caso vida inferior a 40%
if(hp_percentage <= 40 && musicBoss = false){
	audio_sound_pitch(level_ost, 0.025*hp_percentage);
}
//efeito de pitch na música do boss
if(hp_percentage <= 40 && musicBoss = true){
	audio_sound_pitch(level_battle_ost, 0.025*hp_percentage);
}

//resetando pitch caso vida acima de 40
if(hp_percentage >= 40 && musicBoss = false){
	audio_sound_pitch(level_ost, 1);
}
if(hp_percentage >= 40 && musicBoss = true){
	audio_sound_pitch(level_battle_ost, 1);
}

#endregion

#region gameover
//parar música pós gameover.
//reproduzir música de gameover.
//resetar variável do estado da música.
if (game_over = true){
	audio_stop_sound(level_ost);
	audio_play_sound(gameover, 0, 0);
	musicStarted = false;
}
#endregion