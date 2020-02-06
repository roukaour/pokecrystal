treemon_map: MACRO
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map NEW_BARK_TOWN,        TREEMON_SET_CITY
	db -1

RockMonMaps:
	treemon_map BATTLE_TOWER_OUTSIDE, TREEMON_SET_ROCK
	db -1
