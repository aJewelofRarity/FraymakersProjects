// API Script for Assist Template Projectile

var LIFE_TIMER = 16 * 4; // max life of projectile

var isMoving = false;

var life = self.makeInt(LIFE_TIMER);

function deleteSelf() {
	self.destroy();
}

function initialize(){
	// Set up wall hit event
	self.addEventListener(EntityEvent.COLLIDE_WALL, onWallHit, { persistent: true });

	// Set up horizontal reflection
	enableReflectionListener({ mode: "X", replaceOwner: true });

	self.addEventListener(GameObjectEvent.HIT_DEALT, deleteSelf);
}

function onWallHit(event) {
	self.destroy();
}

function update() {
	if (self.inState(PState.ACTIVE) && self.getOwner().getCurrentFrame() >= 24) {
		isMoving = true;
	}
	if (isMoving == true) {
		// Give some horizontal speed
		self.setXSpeed(6.5);

		// Subtract 1 from life counter
		life.dec();
		// If life runs out, destroy
		if (life.get() <= 0) {
			self.destroy();
		}
	}
}
function onTeardown(){
}
