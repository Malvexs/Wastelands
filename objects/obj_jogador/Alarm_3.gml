/// @description Intervalo atks da Faca
if(global.powers[2][3] > 0){ //Se a flag tiver ativa o poder é acionado
	
	audio_play_sound(snd_knife, 1, false);
	
	alarmtime[3] = 150;
	
	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[2][3])
	{
		//poder no nivel 1
		case 1: 
			
			faca_dmg = 2.5
			alarmtime[3] = 140;
			
			break;
		
		//poder no nivel 2
		case 2: 
		
			faca_dmg = 3
			alarmtime[3] = 130;
		
			break;
		//poder no nivel 3
		case 3: 
		
			faca_dmg += 3.5
			alarmtime[3] = 120;
		
			break;
		
		case 4:
		
			faca_dmg = 4
			alarmtime[3] = 110;
			
			break;
			
		case 5:
		
			faca_dmg = 5;
			alarmtime[3] = 80;
			
			break;
	}
	event_user(3);
}

alarm[3] = alarmtime[3];