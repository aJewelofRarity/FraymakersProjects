// API Script for Template Assist

// Set up same states as AssistStats (by excluding "var", these variables will be accessible on timeline scripts!)
STATE_BREAKER = 0;
STATE_FINGER = 1;

var SPAWN_X_DISTANCE = -10; // How far in front of player to spawn
var SPAWN_HEIGHT = 0; // How high up from player to spawn

var star:CustomGameObject = null;

// Runs on object init
function initialize(){
	stage.getCharactersBackContainer().addChild(self.getViewRootContainer());
	self.sendBehind(self.getOwner());

	// Face the same direction as the user
	if (self.getOwner().isFacingLeft()) {
		self.faceLeft();
	}

	// Reposition relative to the user
	Common.repositionToEntityEcb(self.getOwner(), self.flipX(SPAWN_X_DISTANCE), -SPAWN_HEIGHT);
}

function update(){
}
function onTeardown(){
}
