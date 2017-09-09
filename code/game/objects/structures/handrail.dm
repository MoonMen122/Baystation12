/obj/structure/handrai
	name = "handrail"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "handrail"
	desc = "A safety railing with buckles to secure yourself to when floor isn't stable enough."
	density = 0
	anchored = 1
	can_buckle = 1

/*Egh... Still don't work
/obj/structure/support_rail
	desc = "A metal bar used to secure one's self. It has a label on the side that reads: 'Maximum Safe Capacity: 1, Enforceable by Space Law'. It looks pretty serious."
	name = "support rail"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "handrail"
	density = 0
	anchored = 1
	layer = DECAL_LAYER
	explosion_resistance = 5
	var/health = 10
	var/destroyed = 0
	var/mob/living/carbon/human/supported_mob

/obj/structure/support_rail/attackby(obj/item/weapon/W, mob/living/carbon/human/user as mob)
	if(iswrench(W))
		playsound(get_turf(src), 'sound/items/Ratchet.ogg', 50, 1)
		new /obj/item/frame/support_rail(get_turf(src))
		qdel(src)
	else
		return ..()


/obj/structure/support_rail/Destroy()
	letgo()
	..()
	return

/obj/structure/support_rail/proc/letgo()
	supported_mob.update_canmove()
	supported_mob.anchored = 0
	supported_mob.visible_message(
		"<span class='notice'>[supported_mob.name] let go.</span>")
	src.supported_mob = null
	return

/obj/structure/support_rail/attack_hand(mob/user as mob)
	if(supported_mob) //Anyone can force you to let go
		letgo()
		add_fingerprint(user)
	else
		supported_mob = user
		user.visible_message(
				"<span class='notice'>[supported_mob.name] grabbed the rail.</span>")
		user.anchored = 1
		user.forceMove(src.loc)
		user.dir = src.dir
		user.update_canmove()
		add_fingerprint(user)
	return

//support rail desing
/obj/item/frame/support_rail
	name = "support rail design"
	desc = "Used for building support rail on wall."
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "handrail"
	reverse = 1
	build_machine_type = /obj/structure/support_rail */
