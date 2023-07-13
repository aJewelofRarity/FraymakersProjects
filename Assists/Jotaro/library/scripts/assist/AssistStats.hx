// Assist stats for Template Assist

// Define some states for our state machine
STATE_START = 0;
STATE_CALL = 1;

{
	spriteContent: self.getResource().getContent("jotaro"),
	initialState: STATE_START,
	stateTransitionMapOverrides: [
		STATE_START => {
			animation: "start"
		},
		STATE_CALL => {
			animation: "call"
		}
	],
	gravity: 0,
	terminalVelocity: 20,
	assistChargeValue:100
}
