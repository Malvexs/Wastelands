
paused = false; 
paused_surf = -1; 

bg_opWidth = 11700 //Largura
bg_opHeight = 1750 //Altura
/*
map_string = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRS" +
			 "TUVXYWZ[\\]^_`abcdefghijklmnopqrstuvwxyz(|)~"
bitmap_font = font_add_sprite_ext(spr_font_menu_loja, map_string, false, 0)
*/
paused = true
instance_deactivate_all(true);

#region audio
audio_play_sound(snd_lvl_0, 0, 0);
//carregando audiogroups
audio_group_load(sfx_audiogroup);
audio_group_load(ost_audiogroup);
#endregion
