STATE_MAIN = 0;

var SPAWN_X_DISTANCE = 45; // How far in front of player to spawn
var SPAWN_HEIGHT = 0; // How hight up from player to spawn

// Runs on object init
function initialize(){
	// Face the same direction as the user
	if (self.getOwner().isFacingLeft()) {
		self.faceLeft();
	}
	
	// Reposition relative to the user
	repositionToEntityEcb(self.getOwner(), self.flipX(SPAWN_X_DISTANCE), -SPAWN_HEIGHT);

	// Add fade in effect
	startFadeIn();
}

function update(){
	// Behavior for each state
	if (self.inState(STATE_MAIN)) {
		if (self.finalFramePlayed()) {
			self.destroy();
		}
	}
}
function onTeardown(){
}
