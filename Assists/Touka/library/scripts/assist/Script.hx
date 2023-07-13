// API Script for Template Assist

// Set up same states as AssistStats (by excluding "var", these variables will be accessible on timeline scripts!)
STATE_START = 0;
STATE_DASH = 1;
STATE_SKID = 2;
STATE_MID = 3;
STATE_FINAL = 4;

var hit = self.makeBool(false);
var airMultiply = 4;
var foe = new Array();
var launch = 150;

var SPAWN_X_DISTANCE = 65; // How far in front of player to spawn
var SPAWN_HEIGHT = 0; // How high up from player to spawn

function flash() {
	
	Engine.forEach(match.getPlayers(), function (p:Character) {
		Engine.log("delete camera");
		camera.deleteForcedTarget(p);
		camera.deleteTarget(p);
		Engine.log("delete camera true");
		return true;
	}, []);
	//camera.addTarget(self);
	stage.getForegroundEffectsContainer().addChild(self.getViewRootContainer());
	Engine.forEach(match.getPlayers(), function (p:Character) {
		p.getDamageCounterContainer().alpha = 0;
		p.getOffscreenIndicator().getSpriteContainer().alpha = 0;
		return true;
	}, []);
}

function flashEnd() {
	stage.getCharactersFrontContainer().addChild(self.getViewRootContainer());
	Engine.forEach(match.getPlayers(), function (p:Character) {
		p.getDamageCounterContainer().alpha = 1;
		p.getOffscreenIndicator().getSpriteContainer().alpha = 1;
		return true;
	}, []);
}

// Runs on object init
function initialize(){
	// Face the same direction as the user
	if (self.getOwner().isFacingLeft()) {
		self.faceLeft();
		launch = 30;
	}
	camera.addTarget(self);
	// Reposition relative to the user
	Common.repositionToEntityEcb(self.getOwner(), self.flipX(SPAWN_X_DISTANCE), -SPAWN_HEIGHT);
	// Add fade in effect
	Common.startFadeIn();
}

function update(){
}
function onTeardown(){
	camera.deleteTarget(self);
}
