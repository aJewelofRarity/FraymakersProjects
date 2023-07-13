// Animation stats for Assist Template Projectile
{
    spriteContent: self.getResource().getContent("annieCharacter"),
    stateTransitionMapOverrides: [
        PState.ACTIVE => {
            animation: "projectile"
        },
        PState.DESTROYING => {
            animation: "projectile"
        }
    ],
    gravity: 0,
	friction: 0.2,
	groundSpeedCap: 7,
	aerialSpeedCap: 7,
	aerialFriction: 0,
	terminalVelocity: 7,
	floorHeadPosition: 40,
	floorHipWidth: 25,
	floorHipXOffset: 0,
	floorHipYOffset: 0,
	floorFootPosition: 0,
	aerialHeadPosition: 40,
	aerialHipWidth: 25,
	aerialHipXOffset: 0,
	aerialHipYOffset: 0,
	aerialFootPosition: 0
}