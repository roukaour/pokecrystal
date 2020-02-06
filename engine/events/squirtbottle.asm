_Squirtbottle:
	ld hl, .SquirtbottleScript
	call QueueScript
	ld a, $1
	ld [wItemEffectSucceeded], a
	ret

.SquirtbottleScript:
	reloadmappart
	special UpdateTimePals
	callasm .CheckCanUseSquirtbottle
	iffalse .SquirtbottleNothingScript
; TODO: Define WateredWeirdTreeScript on the map of the Squirtbottle Sudowoodo.
	farsjump ObjectEvent ; WateredWeirdTreeScript

.SquirtbottleNothingScript:
	jumptext .SquirtbottleNothingText

.SquirtbottleNothingText:
	text_far _SquirtbottleNothingText
	text_end

.CheckCanUseSquirtbottle:
; TODO: Replace GROUP_NONE and MAP_NONE with the map of the Squirtbottle Sudowoodo.
	ld a, [wMapGroup]
	cp GROUP_NONE
	jr nz, .nope

	ld a, [wMapNumber]
	cp MAP_NONE
	jr nz, .nope

	farcall GetFacingObject
	jr c, .nope

	ld a, d
	cp SPRITEMOVEDATA_SUDOWOODO
	jr nz, .nope

	ld a, 1
	ld [wScriptVar], a
	ret

.nope
	xor a
	ld [wScriptVar], a
	ret
