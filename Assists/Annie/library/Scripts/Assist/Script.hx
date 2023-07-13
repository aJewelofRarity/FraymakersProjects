// API Script for Template Assist

// Set up same states as AssistStats (by excluding "var", these variables will be accessible on timeline scripts!)
STATE_IDLE = 0;
STATE_CUT = 1;
STATE_OUTRO = 2;

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
	if (self.inState(STATE_IDLE)) {
		if (self.finalFramePlayed()) {
			self.toState(STATE_CUT); 
		}
	} else if (self.inState(STATE_CUT)) {
		if (self.finalFramePlayed()) {
			self.toState(STATE_OUTRO); 
		}
	} else if (self.inState(STATE_OUTRO)) {

	}
}
function onTeardown(){
}
