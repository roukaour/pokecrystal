	const_def 2 ; object constants
	const ROUTE41UNDERWATER_POKE_BALL

Route41Underwater_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .DiveMap

.DiveMap:
	divemap ROUTE_41
	return

Route41UnderwaterBigPearl:
	itemball BIG_PEARL

Route41Underwater_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event 25, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route41UnderwaterBigPearl, EVENT_ROUTE_41_UNDERWATER_BIG_PEARL
