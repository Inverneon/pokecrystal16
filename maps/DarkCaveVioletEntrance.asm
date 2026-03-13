	object_const_def
	const DARKCAVEVIOLETENTRANCE_POKE_BALL1
	const DARKCAVEVIOLETENTRANCE_ROCK1
	const DARKCAVEVIOLETENTRANCE_ROCK2
	const DARKCAVEVIOLETENTRANCE_ROCK3
	const DARKCAVEVIOLETENTRANCE_ROCK4
	const DARKCAVEVIOLETENTRANCE_POKE_BALL2
	const DARKCAVEVIOLETENTRANCE_POKE_BALL3
	const DARKCAVEVIOLETENTRANCE_POKE_BALL4

DarkCaveVioletEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmerLisa:
	trainer SWIMMERF, LISA , EVENT_BEAT_SWIMMERF_LISA, SwimmerFLisaseenText, SwimmerFLisaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFLisaAfterText
	waitbutton
	closetext

DarkCaveVioletEntrancePotion:
	itemball MOON_STONE

DarkCaveVioletEntranceFullHeal:
	itemball FULL_HEAL

DarkCaveVioletEntranceHyperPotion:
	itemball RARE_CANDY

DarkCaveVioletEntranceDireHit:
	itemball DIRE_HIT

DarkCaveVioletEntranceRock:
	jumpstd SmashRockScript

DarkCaveVioletEntranceHiddenElixer:
	hiddenitem ELIXER, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_ELIXER

SwimmerFLisaseenText:
	text "I was just about"
	line "To go for a swim"
	cont "...what?"

	para "It's not that"
	line "weird to swim in a"
	cont "Cave!"

	para "Come on let me"
	line "show you the how"
	cont "strong"

	para "My pokemon are"
	line "from swimming here"
	done

SwimmerFLisaBeatenText:
	text "Okay maybe I"
	line "shouldn't swim"
	cont "here."
	done

SwimmerFLisaAfterText:
	text "I could try"
	line "swimming in the"

	para "Ice Path instead."
	line "what do you mean"
    cont "that's worse!"
	done

DarkCaveVioletEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, ROUTE_31, 3
	warp_event 17,  1, DARK_CAVE_BLACKTHORN_ENTRANCE, 2
	warp_event 35, 33, ROUTE_46, 3

	def_coord_events

	def_bg_events
	bg_event 26,  3, BGEVENT_ITEM, DarkCaveVioletEntranceHiddenElixer

	def_object_events
	object_event  6,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntrancePotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_POTION
	object_event 19, 24, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 27,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 18, 25, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 19, 25, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 18, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceFullHeal, EVENT_DARK_CAVE_VIOLET_ENTRANCE_FULL_HEAL
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceHyperPotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HYPER_POTION
	object_event 30, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceDireHit, EVENT_DARK_CAVE_VIOLET_ENTRANCE_DIRE_HIT
	object_event  5, 23, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSwimmerLisa, -1
