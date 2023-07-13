// API Script for Template Assist

// Set up same states as AssistStats (by excluding "var", these variables will be accessible on timeline scripts!)
STATE_IDLE = 0;

var SPAWN_X_DISTANCE = 90; // How far in front of player to spawn
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
	if (self.inState(STATE_IDLE)) {
		if (self.finalFramePlayed()) {
			// Destroy
			self.destroy();
		}
	}
}

function onTeardown(){

}
