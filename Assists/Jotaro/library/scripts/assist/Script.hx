// API Script for Template Assist

// Set up same states as AssistStats (by excluding "var", these variables will be accessible on timeline scripts!)
STATE_START = 0;
STATE_CALL = 1;

var SPAWN_X_DISTANCE = 15; // How far in front of player to spawn
var SPAWN_HEIGHT = 0; // How high up from player to spawn

var star:CustomGameObject = null;
var actionPresses = 1;
var owner:Character = null;

// Runs on object init
function initialize(){
	owner = self.getOwner();
	stage.getCharactersBackContainer().addChild(self.getViewRootContainer());
	// Face the same direction as the user
	if (self.getOwner().isFacingLeft()) {
		self.faceLeft();
	}

	// Reposition relative to the user
	Common.repositionToEntityEcb(self.getOwner(), self.flipX(SPAWN_X_DISTANCE), -SPAWN_HEIGHT);

	// Add fade in effect
	Common.startFadeIn();
}

function update(){
	if (self.inState(STATE_START)) {
		if (owner.getPressedControls().ACTION) {
			actionPresses++;
		}
	}
}
function onTeardown(){
	star.destroy();
}
