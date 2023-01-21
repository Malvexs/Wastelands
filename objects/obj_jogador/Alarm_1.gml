///@description Intervalo atks machado
if(global.powers[1][3] > 0){ //Se a flag tiver ativa o poder é acionado

	alarmtime[1] = 170;	

	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[1][3]) //pega o level atual do poder machado
	{
		//poder no nivel 1
		case 1: //caso o lvl seja 1 então...
			
			axe_dmg += 0.5
			alarmtime[1] -= 5
			//add outros atributos, vel e tals...
			//ex: axe_vel = 10
			break;
		
		//poder no nivel 2
		case 2:  //caso o lvl seja 2 então...
			
			axe_dmg += 0.5;
			alarmtime[1] -= 5
			//ex: axe_vel = 20
			
			break;
		//poder no nivel 3
		case 3: //caso o lvl seja 3 então...
		
			axe_dmg += 0.25;
			alarmtime[1] -= 5
		
			break;
		case 4:
			
			axe_dmg += 0.75;
			alarmtime[1] -= 5
		
			break;
		//adicione mais case caso tenha mais niveis de poder		
		
	}	
	
	event_user(1);	

}

alarm[1] = alarmtime[1];
