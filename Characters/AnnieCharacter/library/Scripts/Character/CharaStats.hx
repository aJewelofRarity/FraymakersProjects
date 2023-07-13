{
	spriteContent: self.getResource().getContent("annieCharacter"),
	name: "Annie",
	airdashAccelMultiplier: 0.4,
	airdashCancelSpeedConservation: 0.8,
	airdashFullspeedLength: 3,
	airdashInitialSpeed: 13,
	airdashStartupLength: 4,

	gravity: 0.95,
	terminalVelocity: 14,
	weight: 75,

	walkSpeedCap: 3,
	walkSpeedAcceleration: 1,
	walkSpeedInitial: 3,
	dashSpeed: 7,

	runSpeedAcceleration: 1.5,
	runSpeedCap: 6.5,

	jumpSpeed: 16.5,
	jumpSpeedBackwardInitialXSpeed: 3.7,
	jumpSpeedForwardInitialXSpeed: 3.7,
	doubleJumpSpeeds: [17],
	shortHopSpeed: 9.5,

	aerialFriction: 0.25,
    aerialSpeedAcceleration: 0.6,
    aerialSpeedCap: 5.5,

	//ENVIRONMENTAL COLLISION BODY (ECB) STATS
	floorHeadPosition: 100,
	floorHipWidth: 50,
	floorHipXOffset: 0,
	floorHipYOffset: 0,
	floorFootPosition: 0,
	aerialHeadPosition: 100,
	aerialHipWidth: 50,
	aerialHipXOffset: 0,
	aerialHipYOffset: 0,
	aerialFootPosition: 25,

	//ROLL AND LEDGE JUMP STATS
	techRollSpeed: 10,
	techRollSpeedStartFrame: 5,
	techRollSpeedLength: 3,
	dodgeRollSpeed: 13,
	dodgeRollSpeedStartFrame: 3,
	dodgeRollSpeedLength: 1,
	getupRollSpeed: 15,
	getupRollSpeedLength: 3,
	getupRollSpeedStartFrame: 2,
	ledgeRollSpeed: 16,
	ledgeRollSpeedStartFrame: 1,
	ledgeRollSpeedLength: 1,
	ledgeJumpXSpeed: 3,
	ledgeJumpYSpeed: -15,

	//CAMERA BOX STATS
	cameraBoxHeight: 225,
	cameraBoxWidth: 200,
	cameraBoxOffsetX: 0,
	cameraBoxOffsetY: 45,

	shieldBackXOffset: 12,
	shieldFrontXOffset: 12,
	shieldBackYOffset: 10,
	shieldFrontYOffset: 10,
	shieldBackHeight: 120,
	shieldFrontHeight: 120,
	shieldBackWidth: 45,
	shieldFrontWidth: 45,

	//VOICE STATS
	//Populate the brackets with IDs in parenthesis separated by commas to add them to the voice bank.
	attackVoiceIds: ["attack1", "attack2", "attack3", "attack4", "attack5", "attack6", "attack7", "attack8", "attack9", "attack10", "attack11", "attack12"],
	hurtLightVoiceIds: [],
	hurtMediumVoiceIds: [],
	hurtHeavyVoiceIds: [],
	koVoiceIds: [],
	//Percentage chance for the voice lines to play (1 being never, 0 being always).
	attackVoiceSilenceRate: 0.05,
	hurtLightSilenceRate: 1,
	hurtMediumSilenceRate: 1,
	hurtHeavySilenceRate: 1,
	koVoiceSilenceRate: 1,
}