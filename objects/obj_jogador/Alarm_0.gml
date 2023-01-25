///@description Intervalo atks melee

if(global.powers[1][3] >= 0){
	
	audio_play_sound(snd_meele, 0, false);
	
	switch(global.powers[3][3])
		{
			//poder no nivel 1
			case 1: 
			
				melee_dmg += 1
				alarmtime[0] -= 20
			
				break;
		
			//poder no nivel 2
			case 2: 
			
				melee_dmg += 1.25
				alarmtime[0] -= 20
			
				break;
			//poder no nivel 3
			case 3: 
			
				melee_dmg += 1.5
				alarmtime[0] -= 25
			
				break;
			case 4:
			
				melee_dmg += 2.25
				alarmtime[0] -= 25
		
			break;						

		}
	
	event_user(0);	

}

alarm[0] = alarmtime[0];



