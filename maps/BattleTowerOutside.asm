	object_const_def

BattleTowerOutside_MapScripts:
	def_scene_scripts

	def_callbacks

BattleTowerOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 21, NEW_BARK_TOWN, 2
	warp_event  9, 21, NEW_BARK_TOWN, 2
	warp_event  8,  9, BATTLE_TOWER_1F, 1
	warp_event  9,  9, BATTLE_TOWER_1F, 2

	def_coord_events

	def_bg_events

	def_object_events
