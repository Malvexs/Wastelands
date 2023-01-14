randomize()
global.exp=0
global.exp_max=100
global.level=1
global.levelup=false

spawn_timer=2*room_speed
upgrade_num = 3

upgrade_alpha=1
upgrade_scale=1

/*display_set_gui_size(320,180)

enum Upgrades{
	Name,
	Script,
	Frequency,
	Length
}

upgrades_grid = ds_grid_create(Upgrades.Length, 0)
ds_grid_add_upgrade("Orbe", -1, -1)
ds_grid_add_upgrade("Pena", -1, -1)
ds_grid_add_upgrade("Imâ", -1, -1)
ds_grid_add_upgrade("Estrela", -1, -1)
ds_grid_add_upgrade("Shuriken", -1, -1)
ds_grid_add_upgrade("Sapo", -1, -1)
ds_grid_add_upgrade("Bumerangue", -1, -1)
ds_grid_add_upgrade("Nada 1", -1, -1)
ds_grid_add_upgrade("Nada 2", -1, -1)
ds_grid_add_upgrade("Nada 3", -1, -1)