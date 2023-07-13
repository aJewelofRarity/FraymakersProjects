// Custom AI for CharacterTemplate

// How far above ledge we need to be at minimum to permit risking side special usage
var RECOVERY_SSPEC_Y_THRESHOLD = 80;

// How far below a ledge we need to be at minimum to do up special recovery (positive means below ledge)
var RECOVERY_USPEC_Y_THRESHOLD = 5;
var RECOVERY_USPEC_X_THRESHOLD = 100;
var RECOVERY_BURST_Y_THRESHOLD = 400; 

var RECOVERY_USPEC_Y_THRESHOLD_FOLLOW = -5; 

// Other vars
var tempPoint1 = new Point();
var tempPoint2 = new Point();
var backAirUsed = self.makeBool(false);

function initialize() {
}

function update() {
	if (character.inState(CState.JUMP_MIDAIR))
	{
		if (backAirUsed.get() && character.getCurrentFrame() < 2)
		{
			backAirUsed.set(false);
		}
	}
	character.getDoubleJumpCount();
	if (self.isRecovering()) {
		// Do recovery logic
		checkRecovery();
	} else {
		//shieldTest();
		backAirUsed.set(false);
	}
}

function onTeardown() {
}

function checkRecovery() {
	// Get the entity the AI wants to target (could be anything from a foe, graph node, etc.)
	var target:Entity = self.getImmediateTarget();
	// Make sure current target is a graph node (indicating a floor), we're falling, and not currently attacking or hurt/helpless
	if (target == null || target.getType() != EntityType.AI_GRAPH_NODE) {
		return;
	}

	if (character.inState(CState.SPECIAL_UP))
	{
		if (character.getCurrentFrame() >= 17 && character.getCurrentFrame() < 33 && character.getAnimation() == "special_up_air"  && character.getY() < target.getY() + RECOVERY_USPEC_Y_THRESHOLD_FOLLOW)
		{
			self.addInputOverrides([
		// Release currently held buttons
		0, 1,
		// Press side special buttons
		Buttons.SPECIAL, 1,
		// Release
		0, 1
	]);
		}
	}

	if ((character.inState(CState.FALL_SPECIAL) || (character.getY() >= target.getY() + RECOVERY_BURST_Y_THRESHOLD && (backAirUsed.get() && character.getDoubleJumpCount() > 0))) && character.getY() >= target.getY() + RECOVERY_USPEC_Y_THRESHOLD)
	{
		self.addInputOverrides([
			// Release currently held buttons
			0, 1,
			// Press side special buttons
			Buttons.SPECIAL | Buttons.DOWN, 1,
			// Release
			0, 1
		]);
	}

	if (character.inState(CState.SPECIAL_DOWN))
	{
		if (backAirUsed.get()) {
			backAirUsed.set(false);
		}
	}


	if (target == null || 
		character.inStateGroup(CStateGroup.ATTACK) || 
		character.inHurtState() || 
		character.inState(CState.FALL_SPECIAL) || 
		character.inState(CState.TUMBLE) || 
		character.getYSpeed() < 0 || 
		self.hasInputOverrides()) {
		return;
	}

	// Choose between up special or side special depending on circumstance
	if (character.getY() >= target.getY() + RECOVERY_USPEC_Y_THRESHOLD && (backAirUsed.get() && character.getDoubleJumpCount() > 0) ) {
		upSpecialRecovery(target);
	} 

	if (character.getY() >= target.getY() + RECOVERY_SSPEC_Y_THRESHOLD && !backAirUsed.get()) {
		backAirRecovery(target);
	}
}

function shieldTest() {
	var facingRight:Bool = character.isFacingRight();

	// Temporarily override engine AI inputs with our own for side special
	self.addInputOverrides([
		// Release currently held buttons
		0, 1,
		// Press side special buttons
		Buttons.DASH | ((facingRight) ? Buttons.RIGHT : Buttons.LEFT), 120,
		// Release
		0, 1
	]);
}

function upSpecialRecovery(target:Entity) {

	var xDistance = character.getX() - target.getX();
	var xDistanceAbs = Math.abs(xDistance);

	if (xDistanceAbs > RECOVERY_USPEC_X_THRESHOLD) {
		// Don't bother using SSPEC if this close to ledge
		return;
	}

	// Temporarily override engine AI inputs with our own for up special
	self.addInputOverrides([
		// Release currently held buttons
		0, 1,
		// Hold up special buttons
		Buttons.SPECIAL | Buttons.UP, 1,
		// Release
		0, 1,
	]);
}

function backAirRecovery(target:Entity) {
	// Determine length to hold side special based on X distance from ledge
	var xDistance = character.getX() - target.getX();
	var xDistanceAbs = Math.abs(xDistance);
	
	// Remember that we already attempted side special once
	backAirUsed.set(true);

	// Temporarily override engine AI inputs with our own for side special
	self.addInputOverrides([
		// Release currently held buttons
		0, 1,
		// Press side special buttons
		Buttons.ATTACK | ((xDistance > 0) ? Buttons.RIGHT : Buttons.LEFT), 1,
		Buttons.ATTACK | ((xDistance > 0) ? Buttons.LEFT : Buttons.RIGHT), 60,
		// Release
		0, 1
	]);
}



//Players X is 5, ledges x is 10

// this c