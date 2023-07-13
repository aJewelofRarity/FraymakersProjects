// API Script for Assist Template Projectile

var LIFE_TIMER = 30 * 4; // max life of projectile

var isMoving = false;

var life = self.makeInt(LIFE_TIMER);

var SPAWN_X_DISTANCE = 90; // How far in front of player to spawn
var SPAWN_HEIGHT = 50; // How hight up from player to spawn

function initialize(){
	// Set up wall hit event
	self.addEventListener(EntityEvent.COLLIDE_WALL, onWallHit, { persistent: true });

	// Reposition relative to the user
	repositionToEntityEcb(self.getOwner(), self.flipX(SPAWN_X_DISTANCE), -SPAWN_HEIGHT);

	// Set up horizontal reflection
	enableReflectionListener({ mode: "X", replaceOwner: true });
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
		self.setXSpeed(20);

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
