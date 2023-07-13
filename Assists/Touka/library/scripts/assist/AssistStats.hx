// Assist stats for Template Assist

// Define some states for our state machine
STATE_START = 0;
STATE_DASH = 1;
STATE_SKID = 2;
STATE_MID = 3;
STATE_FINAL = 4;

{
	spriteContent: self.getResource().getContent("touka"),
	initialState: STATE_START,
	stateTransitionMapOverrides: [
		STATE_START => {
			animation: "startup"
		},
		STATE_DASH => {
			animation: "dash"
		},
		STATE_SKID => {
			animation: "skid"
		},
		STATE_MID => {
			animation: "mid"
		},
		STATE_FINAL => {
			animation: "final"
		}
	],
	gravity: 0,
	aerialSpeedCap: 15,
	groundSpeedCap: 15,
	aerialFriction: 0.75,
	friction: 0.66,
	terminalVelocity: 20,
	cameraBoxHeight: 175,
	cameraBoxWidth: 320,
	cameraBoxOffsetX: 0,
	cameraBoxOffsetY: 45,
	assistChargeValue:145
}
