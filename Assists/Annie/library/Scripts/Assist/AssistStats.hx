STATE_IDLE = 0;
STATE_CUT = 1;
STATE_OUTRO = 2;

{
	spriteContent: self.getResource().getContent("annie"),
	initialState: STATE_IDLE,
	stateTransitionMapOverrides: [
		STATE_IDLE => {
			animation: "idle"
		},
		STATE_CUT => {
			animation: "crescentcut"
		},
		STATE_OUTRO => {
			animation: "outro"
		}
	],
	gravity: 0,
	terminalVelocity: 20,
	assistChargeValue:100
}
