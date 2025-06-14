/obj/structure/machinery/door/poddoor/almayer
	icon = 'icons/obj/structures/doors/blastdoors_shutters.dmi'
	openspeed = 4 //shorter open animation.
	var/vehicle_resistant = TRUE
	tiles_with = list(
		/obj/structure/window/framed/almayer,
		/obj/structure/machinery/door/airlock,
	)

/obj/structure/machinery/door/poddoor/almayer/Initialize()
	. = ..()
	return INITIALIZE_HINT_LATELOAD

/obj/structure/machinery/door/poddoor/almayer/LateInitialize()
	. = ..()
	relativewall_neighbours()

/obj/structure/machinery/door/poddoor/almayer/open
	density = FALSE

/obj/structure/machinery/door/poddoor/almayer/blended
	icon_state = "almayer_pdoor1"
	base_icon_state = "almayer_pdoor"

/obj/structure/machinery/door/poddoor/almayer/blended/open
	density = FALSE

/obj/structure/machinery/door/poddoor/almayer/blended/white
	icon_state = "w_almayer_pdoor1"
	base_icon_state = "w_almayer_pdoor"

/obj/structure/machinery/door/poddoor/almayer/blended/white/open
	density = FALSE

/obj/structure/machinery/door/poddoor/almayer/blended/aicore
	icon_state = "aidoor1"
	base_icon_state = "aidoor"

/obj/structure/machinery/door/poddoor/almayer/blended/aicore/open
	density = FALSE

/obj/structure/machinery/door/poddoor/almayer/blended/white_aicore
	icon_state = "w_aidoor1"
	base_icon_state = "w_aidoor"

/obj/structure/machinery/door/poddoor/almayer/blended/white_aicore/open
	density = FALSE

/obj/structure/machinery/door/poddoor/almayer/locked
	unacidable = TRUE

/obj/structure/machinery/door/poddoor/almayer/locked/attackby(obj/item/C as obj, mob/user as mob)
	if(HAS_TRAIT(C, TRAIT_TOOL_CROWBAR))
		return
	..()

/obj/structure/machinery/door/poddoor/almayer/closed
	density = TRUE
	opacity = TRUE

/obj/structure/machinery/door/poddoor/almayer/planet_side_blastdoor
	density = TRUE
	opacity = TRUE

/obj/structure/machinery/door/poddoor/almayer/airlock
	density = TRUE
	opacity = TRUE
	unacidable = TRUE
	indestructible = TRUE
	var/linked_inner_dropship_airlock_id = "generic"
	var/obj/docking_port/stationary/marine_dropship/airlock/inner/linked_inner = null

/obj/structure/machinery/door/poddoor/almayer/airlock/Initialize()
	. = ..()
	return INITIALIZE_HINT_LATELOAD

/obj/structure/machinery/door/poddoor/almayer/airlock/LateInitialize()
	for(var/obj/docking_port/stationary/marine_dropship/airlock/inner/inner_airlock in GLOB.dropship_airlock_docking_ports)
		if(linked_inner_dropship_airlock_id == inner_airlock.dropship_airlock_id)
			linked_inner = inner_airlock
			linked_inner.poddoors += src

/obj/structure/machinery/door/poddoor/almayer/airlock/Destroy()
	if(linked_inner)
		linked_inner.poddoors -= src
	. = ..()

/obj/structure/machinery/door/poddoor/almayer/airlock/open()
	if(linked_inner?.open_outer_airlock)
		return
	. = ..()

/obj/structure/machinery/door/poddoor/almayer/airlock/golden_arrow_one
	linked_inner_dropship_airlock_id = GOLDEN_ARROW_AIRLOCK_ONE

/obj/structure/machinery/door/poddoor/almayer/airlock/golden_arrow_two
	linked_inner_dropship_airlock_id = GOLDEN_ARROW_AIRLOCK_TWO
