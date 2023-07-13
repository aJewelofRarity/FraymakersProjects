// Assist stats for Template Assist

// Define some states for our state machine
STATE_IDLE = 0;

{
	spriteContent: self.getResource().getContent("necoarc"),
	initialState: STATE_IDLE,
	stateTransitionMapOverrides: [
		STATE_IDLE => {
			animation: "attack"
		}
	],
	gravity: 0,
	terminalVelocity: 10,
	assistChargeValue:125
}
