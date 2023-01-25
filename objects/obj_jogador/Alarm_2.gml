///@descr Intervaloatks bola de fogo
if (global.powers[0][3] > 0){ //Se a flag tiver ativa o poder é acionado

	audio_play_sound(snd_fireball, 1, false);
	
	alarmtime[2] = 150;

	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[0][3])
	{
		//poder no nivel 1
		case 1: 
		
			fireball_dmg += 0.2
			alarmtime[2] -= 5
			
			break;
		
		//poder no nivel 2
		case 2: 
		
			fireball_dmg += 0.5
			alarmtime[2] -= 5
			
			break;
		//poder no nivel 3
		case 3: 
		
			fireball_dmg += 0.25
			alarmtime[2] -= 5
			
			break;
		case 4:
			
			fireball_dmg += 0.75
			alarmtime[2] -= 5
			
			break;
	}

	event_user(2);
}
alarm[2] = alarmtime[2];

