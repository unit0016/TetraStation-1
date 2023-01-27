#define CHANGETURF_DEFER_CHANGE		1
#define CHANGETURF_IGNORE_AIR		2 // This flag prevents changeturf from gathering air from nearby turfs to fill the new turf with an approximation of local air
#define CHANGETURF_FORCEOP			4
#define CHANGETURF_SKIP				8 // A flag for PlaceOnTop to just instance the new turf instead of calling ChangeTurf. Used for uninitialized turfs NOTHING ELSE
#define CHANGETURF_INHERIT_AIR 16 // Inherit air from previous turf. Implies CHANGETURF_IGNORE_AIR
#define CHANGETURF_RECALC_ADJACENT 32 //Immediately recalc adjacent atmos turfs instead of queuing.

#define IS_OPAQUE_TURF(turf) (turf.directional_opacity == ALL_CARDINALS)

#define UNDERFLOOR_HIDDEN 0
#define UNDERFLOOR_VISIBLE 1
#define UNDERFLOOR_INTERACTABLE 2

/// Create tile subtypes for a path to simplify mapping.
#define TURF_ATMOS_SUBTYPE_HELPER(path) \
##path/airless {\
	initial_gas_mix = AIRLESS_ATMOS; \
} \
##path/telecomms {\
	initial_gas_mix = TCOMMS_ATMOS; \
} \
##path/lavaland {\
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS; \
} \
##path/icemoon {\
	initial_gas_mix = ICEMOON_DEFAULT_ATMOS; \
} \
##path/kitchen_coldroom {\
	initial_gas_mix = KITCHEN_COLDROOM_ATMOS; \
} \
