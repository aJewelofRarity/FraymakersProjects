STATE_MAIN = 0;

{
	spriteContent: self.getResource().getContent("peacockAssist"),
	initialState: STATE_MAIN,
	stateTransitionMapOverrides: [
		STATE_MAIN => {
			animation: "main"
		}
	],
	gravity: 0,
	terminalVelocity: 20,
	assistChargeValue:100
}