; Maps that roaming monsters can be on, and possible maps they can jump to.

roam_map: MACRO
	map_id \1
	db _NARG - 1
rept _NARG - 1
	map_id \2
	shift
endr
	db 0
list_index = list_index + 1
ENDM

RoamMaps:
; TODO: Choose maps to use here.
	list_start RoamMaps
	; start map, ...other maps
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	assert_list_length NUM_ROAMMON_MAPS
	db -1 ; end
