///@description criando bus para músicas e variáveis de checagem do estado do áudio

//criando ost bus
ost = audio_emitter_create();
ost_bus = audio_bus_create();
audio_emitter_bus(ost, ost_bus);

lowpass = audio_effect_create(AudioEffectType.LPF2);
lowpass.q = 1;
lowpass.cutoff = 22000;
ost_bus.effects[0] = lowpass;

roomStarted = false;
musicStarted = false;
musicIsPaused = false;
musicBoss = false;