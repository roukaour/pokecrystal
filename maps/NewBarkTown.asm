	object_const_def

NewBarkTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

NewBarkTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  7, PLAYERS_HOUSE_1F, 1
	warp_event  3,  7, BATTLE_TOWER_OUTSIDE, 1
	warp_event  9,  3, INDIGO_PLATEAU_POKECENTER_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
