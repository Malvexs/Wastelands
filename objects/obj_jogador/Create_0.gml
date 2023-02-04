#region variaveis movimentacao
//andar

walkspeed = 2;
//teste
#endregion

//variaveis para a colisão com o mapa
gotCollision = false;

globalvar maxLevel;  //Váriavel para controle do nível máximo que 36 até o momento
maxLevel = false; //maxLevel começa como false

#region intervalo dos atks
//intervalo dos atks

alarmtime[0] = 120; //melee

alarmtime[1] = 1; //machado

alarmtime[2] = 1; //bola de fogo

alarmtime[3] = 1; //facas

alarmtime[5] = 1; //magia

alarmtime[6] = 1; //orbe

alarmtime[7] = 1; //raios

alarm[0] = alarmtime[0]; //melee

alarm[1] = alarmtime[1]; //machado

alarm[2] = alarmtime[2]; //bola de fogo

alarm[3] = alarmtime[3]; //facas

alarm[5] = alarmtime[5]; //magia

alarm[6] = alarmtime[6]; //orbe

alarm[7] = alarmtime[7]; //raios

cooldown = 3;

weapon_cooldown[4] = cooldown;

alarm[4] = weapon_cooldown[4];

slot[0] = "melee";
slot[1] = "axe";
slot[2] = "fireball";
slot[3] = "faca"

#endregion 

global.inventario = []
 //poderes
//Ordem = 0 Nome, 1 Descricao, 2 sprite, 3 nível, 4...,
global.powers = [
	["Bola de fogo","Lança bolas de fogo", spr_fireball, 0, 5], 
	["Machado","Atira machados", spr_axe, 0, 5], 
	["Faca","Atira no inimigo mais próximo", spr_faca, 0, 5],
	["Espada","Ataque corpo a corpo", spr_melee_menu, 0, 5],
	["Varinha Mágica", "Teleguiado, baixo dano", spr_magia_menu, 0, 5],
	["Orbe", "Orbita o jogador", spr_orbe, 0, 5],
	["Raio", "Alto dano, destino aleatório", spr_raio_menu, 0, 5],
	]

melee_dmg = 4;
axe_dmg = 8;
fireball_dmg = 6;
faca_dmg = 5;
magia_dmg = 0.5;
orbe_dmg = 3;
raio_dmg = 10;

repeticao_axe = 1;
repeticao_fireball = 1;
repeticao_melee = 1;

collectRadius = 50;  //Raio do círculo de coleta de xp

#region audio
//criando emitter para efeito de reverberação de som
sfxe = audio_emitter_create();
sfx_ebus = audio_bus_create();
audio_emitter_bus(sfxe, sfx_ebus);

//esses efeitos de som são relativamente novos. por algum motivo o game maker alerta possíveis
//variáveis não utilizadas, mas são parâmetros para os efeitos de som.

var _reverb = audio_effect_create(AudioEffectType.Reverb1);
_reverb.bypass = false;
_reverb.size = 0.2;
_reverb.damp = 0.7;
_reverb.mix = 0.2;

sfx_ebus.effects[0] = _reverb;
#endregion

