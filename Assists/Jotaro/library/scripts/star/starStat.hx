// Assist stats for Template Assist

// Define some states for our state machine
STATE_BREAKER = 0;
STATE_FINGER = 1;

{
	spriteContent: self.getResource().getContent("star"),
	initialState: STATE_BREAKER,
	stateTransitionMapOverrides: [
		STATE_BREAKER => {
			animation: "breaker"
		},
		STATE_FINGER => {
			animation: "finger"
		}
	],
	gravity: 0,
	friction: 0.2,
	groundSpeedCap: 11,
	aerialSpeedCap: 11,
	aerialFriction: 0.2,
}
