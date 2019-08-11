//Deathsquad suit
/obj/item/clothing/head/helmet/space/deathsquad
	name = "deathsquad helmet"
	desc = "That's not red paint. That's real blood."
	icon_state = "deathsquad"
	item_state_slots = list(
		slot_l_hand_str = "syndicate-helm-black-red",
		slot_r_hand_str = "syndicate-helm-black-red",
		)
	armor = list(melee = 65, bullet = 55, laser = 35,energy = 20, bomb = 30, bio = 100, rad = 60)
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	min_pressure_protection = 0
	flags_inv = BLOCKHAIR
	siemens_coefficient = 0.6

//Space santa outfit suit
/obj/item/clothing/head/helmet/space/santahat
	name = "Santa's hat"
	desc = "Ho ho ho. Merrry X-mas!"
	icon_state = "santahat"
	item_state = "santahat"
	flags_inv = BLOCKHAIR
	body_parts_covered = HEAD

/obj/item/clothing/suit/space/santa
	name = "Santa's suit"
	desc = "Festive!"
	icon_state = "santa"
	allowed = list(/obj/item) //for stuffing exta special presents

/obj/item/clothing/suit/space/santa/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0

//Space pirate outfit
/obj/item/clothing/head/helmet/pirate
	name = "pirate hat"
	desc = "Yarr."
	icon_state = "pirate"
	item_state = "pirate"
	armor = list(melee = 60, bullet = 50, laser = 30,energy = 15, bomb = 30, bio = 30, rad = 30)
	flags_inv = BLOCKHAIR
	body_parts_covered = 0
	siemens_coefficient = 0.9

/obj/item/clothing/suit/space/pirate
	name = "pirate coat"
	desc = "Yarr."
	icon_state = "pirate"
	w_class = ITEM_SIZE_NORMAL
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/tank/emergency)
	armor = list(melee = 60, bullet = 50, laser = 30,energy = 15, bomb = 30, bio = 30, rad = 30)
	siemens_coefficient = 0.9
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/suit/space/pirate/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0

//Orange emergency space suit
/obj/item/clothing/head/helmet/space/emergency
	name = "Emergency Space Helmet"
	icon_state = "spacebowl"
	light_overlay = "yellow_light"
	desc = "A simple helmet with a built in light, smells like mothballs."
	flash_protection = FLASH_PROTECTION_NONE

/obj/item/clothing/suit/space/emergency
	name = "Emergency Softsuit"
	icon_state = "space_emergency"
	desc = "A thin, ungainly softsuit colored in blaze orange for rescuers to easily locate, looks pretty fragile."

/obj/item/clothing/suit/space/emergency/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 4

/obj/item/clothing/head/helmet/space/fishbowl
	name = "spacesuit helmet"
	desc = "A special helmet designed for work in a hazardous, low-pressure environment. The tinting can be toggled for flash protection at the cost of worse visibility."
	icon_state = "spacebowl"
	light_overlay = "yellow_light"
	tinted = FALSE
	tint = 0 //INF, WAS NOTHING (0)
