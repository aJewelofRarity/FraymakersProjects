{
    //MOTIONS
	stand: {},
	stand_turn: {},
	walk_in: {},
	walk: {},
	walk_out: {},
	dash: {},
	run: {},
	run_turn: {},
	skid: {},
	jump_squat: {},
	jump_in: {},
	jump_midair: {},
	jump_out: {},
	fall_loop: {},
	fall_special: {},
	land_light: {},
	land_heavy: {},
	crouch_in: {},
	crouch_loop: {},
	crouch_out: {},

	//AIRDASHES
	airdash_up: {},
	airdash_down: {},
	airdash_forward: {},
	airdash_back: {},
	airdash_forward_up: {},
	airdash_forward_down: {},
	airdash_back_up: {},
	airdash_back_down: {},

	//DEFENSE
	shield_in: {},
	shield_loop: {},
	shield_hurt: {},
	shield_out: {}, 
	parry_in: {},
	parry_success: {},
	parry_fail: {},
	roll: {},
	spot_dodge: {},

	//ASSIST CALL
	assist_call: {},
	assist_call_air: {},

	//LIGHT ATTACKS
	jab1: {},
	jab2: {},
	jab3: {},
	dash_attack: {xSpeedConservation: 1},
	tilt_forward: {},
	tilt_up: {},
	tilt_down: {},

	//STRONG ATTACKS
	strong_forward_in: {},
	strong_forward_charge: {},
	strong_forward_attack: {},
	strong_up_in: {},
	strong_up_charge: {},
	strong_up_attack: {},
	strong_down_in: {},
	strong_down_charge: {},
	strong_down_attack: {},
    
    //AERIAL ATTACKS
	aerial_neutral: {landAnimation:"aerial_neutral_land"},
	aerial_forward: {landAnimation:"aerial_forward_land"},
	aerial_back: {landAnimation:"aerial_back_land", allowMovement: true},
	aerial_back_loop: {landAnimation:"aerial_back_land", allowMovement: true},
	aerial_back_out: {landAnimation:"aerial_back_land", allowMovement: true},
	aerial_up: {landAnimation:"aerial_up_land"},
	aerial_down: {landAnimation:"aerial_down_land", xSpeedConservation: 1, ySpeedConservation: 0.75, gravityMultiplier:0.9, allowMovement: true},

	//AERIAL ATTACK LANDING
	aerial_neutral_land: {},
	aerial_forward_land: {},
	aerial_back_land: {},
	aerial_up_land: {},
	aerial_down_land: {xSpeedConservation: 0},

    //SPECIAL ATTACKS
	special_neutral: {},
	special_neutral_air: {},
    special_neutral_air_land: {},
    special_up: { allowMovement: true, aerialSpeedCap: 3.5, nextState: CState.FALL_SPECIAL, xSpeedConservation: 0.3, landAnimation: "land", leaveGroundCancel: false },
    special_up_air: { allowMovement: true, aerialSpeedCap: 3.5, nextState: CState.FALL_SPECIAL, xSpeedConservation: 0.5, landAnimation: "land", leaveGroundCancel: false },
    special_up_follow: { allowMovement: true, aerialSpeedCap: 2, landAnimation: "special_up_follow_land" },
    special_up_follow_land: {},
    special_side: { nextState: CState.FALL, landType: LandType.NORMAL, landAnimation: "special_side_land", xSpeedConservation:0, ySpeedConservation:0, leaveGroundCancel: false },
	special_side_land: { solid: true },
    special_side_follow: { solid: true },
    special_side_new: { slideOff: false },
    special_side_air: {singleUse: true},
    special_down: {gravityMultiplier:0},
    special_down_air: {gravityMultiplier:0},

    //THROWS
	grab: {},
	grab_hold: {},
	throw_forward: {},
	throw_back: {},
	throw_up: {},
	throw_down: {},

	//HURT ANIMATIONS
	hurt_light_low: {},
	hurt_light_middle: {},
	hurt_light_high: {},
	hurt_medium: {},
	hurt_heavy: {},
	hurt_thrown: {},
	tumble: {},

	//CRASH
	crash_bounce: {},
	crash_loop: {},
	crash_get_up: {},
	crash_attack: {},
	crash_roll: {},

	//LEDGE
	ledge_in: {},
	ledge_loop: {},
	ledge_roll: {},
	ledge_climb: {},
	ledge_attack: {nextState:CState.CROUCH_LOOP},

	//MISC
	revival: {},
	emote: {}
}
