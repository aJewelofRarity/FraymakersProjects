// Hitbox stats
{
    //Ground normals
    jab1: {
        hitbox0: { damage: 1.5, knockbackGrowth: 14, baseKnockback: 23, hitstop:9, selfHitstop: 8, hitstun: -1, angle: 40 }
    },
    jab2: {
        hitbox0: { damage: 1.5, knockbackGrowth: 14, baseKnockback: 23, hitstop:9, selfHitstop: 8, hitstun: -1, angle: 40 }
    },
    jab3: {
        hitbox0: { damage: 2, knockbackGrowth: 24, baseKnockback: 50, hitstop:-1, selfHitstop: -1, hitstun: -1, angle: 40, attackStrength: AttackStrength.MEDIUM }
    },
    tilt_down: {
        hitbox0: { damage: 5, knockbackGrowth: 10, baseKnockback: 58, hitstop:4, hitstun: -1, angle: 60, reversibleAngle: false },
        hitbox1: { damage: 10, knockbackGrowth: 50, baseKnockback: 60, hitstop:15, hitstun: -1, angle: 42, reversibleAngle: false },
        hitbox2: { damage: 5, knockbackGrowth: 15, baseKnockback: 45, hitstop:5, hitstun: -1, angle: 320 }
    },
    tilt_up: {
        hitbox1: { damage: 5.5, knockbackGrowth: 57, baseKnockback: 62, hitstop:-1, hitstun: 10, angle: 45, attackStrength: AttackStrength.MEDIUM, limb: AttackLimb.SWORD },
        hitbox0: { damage: 0.25, knockbackGrowth: 2, baseKnockback: 30, hitstop:-1, hitstun: -1, angle: 135, attackStrength: AttackStrength.LIGHT, limb: AttackLimb.SWORD },
    },
    tilt_forward_old: {
        hitbox0: { damage: 5, knockbackGrowth: 7, baseKnockback: 27, hitstop:-1, hitstun: -1, angle: 45, attackStrength: AttackStrength.HEAVY },
    },
    tilt_forward: {
        hitbox0: { damage: 7, knockbackGrowth: 40, baseKnockback: 60, hitstop:-1, hitstun: -1, angle: 35, attackStrength: AttackStrength.HEAVY },
        hitbox1: { damage: 5, knockbackGrowth: 20, baseKnockback: 60, hitstop:-1, hitstun: -1, angle: 75, attackStrength: AttackStrength.MEDIUM },
    },
    dash_attack: {
        hitbox0: { damage: 10, knockbackGrowth: 20, baseKnockback: 70, hitstop:-1, hitstun: -1, angle: 30, attackStrength: AttackStrength.HEAVY },
    },
    
    //Air Normals
    aerial_forward: {
        hitbox0: { damage: 10, knockbackGrowth: 50, baseKnockback: 15, hitstop:10, hitstun: -1, angle: 355, attackStrength: AttackStrength.HEAVY },
        hitbox1: { damage: 2, knockbackGrowth: 20, baseKnockback: 60, hitstop:2, hitstun: -1, angle: 100, attackStrength: AttackStrength.MEDIUM }
    },
    aerial_neutral: {
        hitbox0: { damage: 0.9, knockbackGrowth: 60, baseKnockback: 57, hitstop:5, hitstun: -1, angle: 62, reversibleAngle: false, attackStrength: AttackStrength.LIGHT }
    },
    special_up_follow: {
        hitbox0: { damage: 3.5, knockbackGrowth: 15, baseKnockback: 60, hitstop:5, hitstun: -1, angle: 270, attackStrength: AttackStrength.HEAVY },
        hitbox1: { damage: 3.5, knockbackGrowth: 10, baseKnockback: 40, hitstop:5, hitstun: -1, angle: 75, attackStrength: AttackStrength.MEDIUM }
    },
    special_up_follow_land: {
        hitbox0: { damage: 6.5, knockbackGrowth: 70, baseKnockback: 80, hitstop:5, hitstun: -1, angle: 75, attackStrength: AttackStrength.HEAVY },
        hitbox1: { damage: 4.5, knockbackGrowth: 25, baseKnockback: 45, hitstop:5, hitstun: -1, angle: 54, attackStrength: AttackStrength.MEDIUM }
    },
    aerial_back_loop: {
        hitbox1: { damage: 2.5, knockbackGrowth: 57, baseKnockback: 62, hitstop:-1, hitstun: 10, angle: 45, attackStrength: AttackStrength.MEDIUM, limb: AttackLimb.SWORD },
        hitbox0: { damage: 0.25, knockbackGrowth: 2, baseKnockback: 30, hitstop:-1, hitstun: -1, angle: 135, attackStrength: AttackStrength.LIGHT, limb: AttackLimb.SWORD },
    },
    aerial_back_out: {
        hitbox0: { damage: 6.5, knockbackGrowth: 20, baseKnockback: 45, hitstop:10, hitstun: -1, angle: 350, attackStrength: AttackStrength.HEAVY },
        hitbox1: { damage: 4.5, knockbackGrowth: 10, baseKnockback: 35, hitstop:5, hitstun: -1, angle: 120, attackStrength: AttackStrength.HEAVY, reversibleAngle: false }
    },
    aerial_up: {
        hitbox0: { damage: 6.5, knockbackGrowth: 17, baseKnockback: 75, hitstop:5, hitstun: -1, angle: 83, attackStrength: AttackStrength.LIGHT, reversibleAngle: false }
    },
    aerial_down: {
        hitbox0: { damage: 4, knockbackGrowth: 45, baseKnockback: 60, hitstop:5, hitstun: -1, angle: 90, attackStrength: AttackStrength.MEDIUM },
        hitbox1: { damage: 5, knockbackGrowth: 55, baseKnockback: 70, hitstop:5, hitstun: -1, angle: 90, attackStrength: AttackStrength.HEAVY },
        hitbox2: { damage: 7, knockbackGrowth: 55, baseKnockback: 85, hitstop:10, hitstun: -1, angle: 270, attackStrength: AttackStrength.HEAVY }
    },

    //Specials
    special_up: {
        hitbox0: { damage: 0.5, knockbackGrowth: 0, baseKnockback: 75, hitstop:2, selfHitStop: 4, hitstun: -1, angle: 367, attackStrength: AttackStrength.LIGHT },
        hitbox1: { damage: 2, knockbackGrowth: 25, baseKnockback: 75, hitstop:15, selfHitStop: 2, hitstun: 7, angle: 85, attackStrength: AttackStrength.FATAL, reversibleAngle: false }
    },
    special_up_air: {
        hitbox0: { damage: 0.5, knockbackGrowth: 0, baseKnockback: 75, hitstop:2, selfHitStop: 4, hitstun: -1, angle: 367, attackStrength: AttackStrength.LIGHT},
        hitbox1: { damage: 2, knockbackGrowth: 25, baseKnockback: 75, hitstop:15, selfHitStop: 2, hitstun: 7, angle: 85, attackStrength: AttackStrength.FATAL, reversibleAngle: false }
    },

    special_side: {
        hitbox0: { damage: 10, knockbackGrowth: 10, baseKnockback: 63, hitstop:10, selfHitstop: 4, hitstun: -1, angle: 25, attackStrength: AttackStrength.MEDIUM, reversibleAngle: false }
    },
    special_side_follow: {
        hitbox0: { damage: 10, knockbackGrowth: 40, baseKnockback: 75, hitstop:12, hitstun: -1, angle: 85, attackStrength: AttackStrength.HEAVY, reversibleAngle: false }
    },
    
    /*
    special_side: {
        hitbox0: { damage: 10, knockbackGrowth: 15, baseKnockback: 80, hitstop:6, selfHitStop: 6, hitstun: -1, angle: 60, attackStrength: AttackStrength.HEAVY, reversibleAngle: false },
        hitbox1: { damage: 5, knockbackGrowth: 13, baseKnockback: 65, hitstop:2, selfHitStop: 2, hitstun: -1, angle: 85, attackStrength: AttackStrength.MEDIUM, reversibleAngle: false }
    },
    */

    special_side_air: {
        hitbox0: { damage: 10, knockbackGrowth: 15, baseKnockback: 80, hitstop:6, selfHitStop: 6, hitstun: -1, angle: 60, attackStrength: AttackStrength.HEAVY, reversibleAngle: false },
        hitbox1: { damage: 5, knockbackGrowth: 13, baseKnockback: 65, hitstop:2, selfHitStop: 2, hitstun: -1, angle: 85, attackStrength: AttackStrength.MEDIUM, reversibleAngle: false }
    },
    special_neutral_air: {
        hitbox0: { damage: 3.5, knockbackGrowth: 3, baseKnockback: 20, hitstop:36, selfHitstop: 10, hitstun: -1, angle: 90, attackStrength: AttackStrength.MEDIUM, reversibleAngle: false }
    },
    special_down: {
        hitbox0: { damage: 25, knockbackGrowth: 17, baseKnockback: 100, hitstop:26, selfHitstop: 1, hitstun: -1, angle: 370, attackStrength: AttackStrength.FATAL }
    },
    special_down_air: {
        hitbox0: { damage: 25, knockbackGrowth: 17, baseKnockback: 100, hitstop:26, selfHitstop: 1, hitstun: -1, angle: 370, attackStrength: AttackStrength.FATAL }
    },

    //Throws
    throw_back: {
        hitbox0: { damage: 8, knockbackGrowth: 40, baseKnockback: 75, hitstop:5, hitstun: -1, angle: 45, attackStrength: AttackStrength.HEAVY, reversibleAngle: false }
    },
    throw_forward: {
        hitbox0: { damage: 10, knockbackGrowth: 40, baseKnockback: 75, hitstop:5, hitstun: -1, angle: 45, attackStrength: AttackStrength.HEAVY, reversibleAngle: false }
    },
    throw_up: {
        hitbox0: { damage: 2, knockbackGrowth: 0, baseKnockback: 65, hitstop:8, hitstun: 5, angle: 105, attackStrength: AttackStrength.MEDIUM, reversibleAngle: false },
        hitbox1: { damage: 8, knockbackGrowth: 30, baseKnockback: 100, hitstop:5, hitstun: -1, angle: 75, attackStrength: AttackStrength.HEAVY, reversibleAngle: false }
    },
    throw_down: {
        hitbox0: { damage: 7, knockbackGrowth: 70, baseKnockback: 62, hitstop:5, hitstun: -1, angle: 95, attackStrength: AttackStrength.HEAVY, reversibleAngle: false }
    },

    //Strongs
    strong_forward_attack: {
        hitbox0: { damage: 13, knockbackGrowth: 75, baseKnockback: 68, hitstop:-1, hitstun: -1, angle: 45, attackStrength: AttackStrength.HEAVY, reversibleAngle: false, maxChargeDamageMultiplier: 1.5 },
        hitbox1: { damage: 9, knockbackGrowth: 50, baseKnockback: 45, hitstop:-1, hitstun: -1, angle: 45, attackStrength: AttackStrength.MEDIUM, reversibleAngle: false, maxChargeDamageMultiplier: 1.5 }
    },
    strong_up_attack: {
        hitbox0: { damage: 12, knockbackGrowth: 70, baseKnockback: 60, hitstop:5, hitstun: -1, angle: 80, attackStrength: AttackStrength.HEAVY, reversibleAngle: false, maxChargeDamageMultiplier: 1.5 }
    },
    strong_down_attack: {
        hitbox0: { damage: 14, knockbackGrowth: 80, baseKnockback: 65, hitstop:5, hitstun: -1, angle: 45, attackStrength: AttackStrength.HEAVY, reversibleAngle: false, maxChargeDamageMultiplier: 1.5 },
        hitbox1: { damage: 10, knockbackGrowth: 40, baseKnockback: 35, hitstop:5, hitstun: -1, angle: 75, attackStrength: AttackStrength.HEAVY, reversibleAngle: false, maxChargeDamageMultiplier: 1.3 }
    },
    crash_attack: {
        hitbox0: { damage: 10, knockbackGrowth: 20, baseKnockback: 50, hitstop:5, hitstun: -1, angle: 45, attackStrength: AttackStrength.HEAVY, reversibleAngle: false }
    }
}
