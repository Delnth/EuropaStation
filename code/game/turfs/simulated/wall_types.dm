/turf/simulated/wall/constructed/r_wall
	icon_state = "rgeneric"

/turf/simulated/wall/constructed/r_wall/New(var/newloc)
	..(newloc, MATERIAL_PLASTEEL,MATERIAL_PLASTEEL) //3strong

/turf/simulated/wall/constructed/ocp_wall
	icon_state = "rgeneric"

/turf/simulated/wall/constructed/ocp_wall/New(var/newloc)
	..(newloc, MATERIAL_OSMIUM_CARBIDE_PLASTEEL, MATERIAL_OSMIUM_CARBIDE_PLASTEEL)

/turf/simulated/wall/constructed/r_wall/rglass_wall/New(var/newloc) //Structural, but doesn't impede line of sight. Fairly pretty anyways.
	..(newloc, MATERIAL_REINFORCED_GLASS, MATERIAL_STEEL)
	icon_state = "rgeneric"

/turf/simulated/wall/constructed/r_wall/hull
	name = "hull"
	color = COLOR_HULL

/turf/simulated/wall/constructed/prepainted
	paint_color = COLOR_GUNMETAL
/turf/simulated/wall/constructed/r_wall/prepainted
	paint_color = COLOR_GUNMETAL

/turf/simulated/wall/constructed/r_wall/hull/Initialize()
	. = ..()
	paint_color = color
	color = null //color is just for mapping
	if(prob(40))
		var/spacefacing = FALSE
		for(var/direction in GLOB.cardinal)
			var/turf/T = get_step(src, direction)
			var/area/A = get_area(T)
			if(A && (A.area_flags & AREA_FLAG_EXTERNAL))
				spacefacing = TRUE
				break
		if(spacefacing)
			var/bleach_factor = rand(10,50)
			paint_color = adjust_brightness(paint_color, bleach_factor)
	update_icon()

/turf/simulated/wall/constructed/iron/New(var/newloc)
	..(newloc,MATERIAL_IRON)

/turf/simulated/wall/constructed/uranium/New(var/newloc)
	..(newloc,MATERIAL_URANIUM)

/turf/simulated/wall/constructed/diamond/New(var/newloc)
	..(newloc,MATERIAL_DIAMOND)

/turf/simulated/wall/constructed/gold/New(var/newloc)
	..(newloc,MATERIAL_GOLD)

/turf/simulated/wall/constructed/silver/New(var/newloc)
	..(newloc,MATERIAL_SILVER)

/turf/simulated/wall/constructed/phoron/New(var/newloc)
	..(newloc,MATERIAL_PHORON)

/turf/simulated/wall/constructed/limestone/New(var/newloc)
	..(newloc,MATERIAL_LIMESTONE)

/turf/simulated/wall/constructed/wood/New(var/newloc)
	..(newloc,MATERIAL_WOOD)

/turf/simulated/wall/constructed/ironphoron/New(var/newloc)
	..(newloc,MATERIAL_IRON,MATERIAL_PHORON)

/turf/simulated/wall/constructed/golddiamond/New(var/newloc)
	..(newloc,MATERIAL_GOLD,MATERIAL_DIAMOND)

/turf/simulated/wall/constructed/silvergold/New(var/newloc)
	..(newloc,MATERIAL_SILVER,MATERIAL_GOLD)

/turf/simulated/wall/constructed/limestonediamond/New(var/newloc)
	..(newloc,MATERIAL_LIMESTONE,MATERIAL_DIAMOND)

// Kind of wondering if this is going to bite me in the butt.
/turf/simulated/wall/constructed/voxshuttle/New(var/newloc)
	..(newloc, MATERIAL_VOX)
/turf/simulated/wall/constructed/voxshuttle/attackby()
	return
/turf/simulated/wall/constructed/titanium/New(var/newloc)
	..(newloc,MATERIAL_TITANIUM)

/turf/simulated/wall/constructed/r_titanium
	icon_state = "rgeneric"

/turf/simulated/wall/constructed/r_titanium/New(var/newloc)
	..(newloc, MATERIAL_TITANIUM,MATERIAL_TITANIUM)

/turf/simulated/wall/constructed/alium
	icon_state = "jaggy"
	floor_type = /turf/simulated/floor/fixed/alium

/turf/simulated/wall/constructed/alium/New(var/newloc)
	..(newloc,MATERIAL_ALIUMIUM)

/turf/simulated/wall/constructed/alium/ex_act(severity)
	if(prob(explosion_resistance))
		return
	..()

/turf/simulated/wall/constructed/crystal/New(var/newloc)
	..(newloc,MATERIAL_CRYSTAL)